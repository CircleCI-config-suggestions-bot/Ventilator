/* Copyright 2020-2022, RespiraWorks
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#include "comms.h"

#include <pb_common.h>
#include <pb_decode.h>
#include <pb_encode.h>

#include <algorithm>  // for std::min
#include <optional>

#include "system_timer.h"

// NOTE this is work in progress.
// Proper framing incomming. Afproto will be used to encode data to form that
// can be safely sent over wire - with packet start/end markers and CRC

// TODO add frame markers
// TODO add marker escaping in contents
// TODO add CRC to whole packet

// We currently lack proper message framing, so we use a timeout to determine
// when the GUI is done sending us its message.
static constexpr Duration RxTimeout{milliseconds(1)};

// We send a ControllerStatus every TX_INTERVAL_MS.

// In Alpha build we use synchronized communication initiated by GUI cycle
// controller. Since both ControllerStatus and GuiStatus take roughly 300+
// bytes, we need at least 1/115200.*10*300=26ms to transmit.
static constexpr Duration TxInterval{milliseconds(30)};

bool Comms::IsTimeToProcessPacket() {
  return SystemTimer::singleton().now() - last_rx_ > RxTimeout;
}

void Comms::ProcessTx(const ControllerStatus &controller_status) {
  if (uart_->CannotTransmit()) return;

  // Serialize our current state into the buffer if
  //  - we can transmit at least one byte now (per previous return condition),
  //  - we're not currently transmitting (in order not to overwrite our tx buffer), and
  //  - it's been a while since we last transmitted (or we never did).
  if (tx_bytes_remaining_ == 0 &&
      (SystemTimer::singleton().now() - *last_tx_ > TxInterval || last_tx_ == std::nullopt)) {
    // Serialize current status into output buffer.
    //
    // TODO: Frame the message bytes.
    // TODO: Add a checksum to the message.
    pb_ostream_t stream = pb_ostream_from_buffer(tx_buffer_, sizeof(tx_buffer_));
    if (!pb_encode(&stream, ControllerStatus_fields, &controller_status)) {
      // TODO: Serialization failure; log an error or raise an alert.
      return;
    }
    tx_idx_ = 0;
    tx_bytes_remaining_ = stream.bytes_written;
    last_tx_ = SystemTimer::singleton().now();
  }

  // TODO: Alarm if we haven't been able to send a status in a certain amount
  // of time.

  // Send bytes over the wire if any are in our buffer.
  if (tx_bytes_remaining_ > 0) {
    // We are very conservative with this Write request, which uses
    // length = std::min(uart_->TxFree(), length) while uart::Write has its own mechanics to prevent
    // buffer overflow.
    size_t bytes_written =
        uart_->Write(tx_buffer_ + tx_idx_, std::min(uart_->TxFree(), tx_bytes_remaining_));
    // TODO: How paranoid should we be about this underflowing?  Perhaps we
    // should reset the device if this or other invariants are violated?
    tx_bytes_remaining_ = tx_bytes_remaining_ - bytes_written;
    tx_idx_ += bytes_written;
  }
}

void Comms::ProcessRx(GuiStatus *gui_status) {
  if (uart_->HasReceivedBytes()) {
#if defined(UART_VIA_DMA)
    // in DMA mode, this means we recieved GuiStatus_size bytes, so we can deserialize them
    if (rx_in_progress_) {
      pb_istream_t stream = pb_istream_from_buffer(rx_buffer_, rx_index_);
      GuiStatus new_gui_status = GuiStatus_init_zero;
      if (pb_decode(&stream, GuiStatus_fields, &new_gui_status)) {
        *gui_status = new_gui_status;
      } else {
        // TODO: Log an error.
      }
      rx_index_ = 0;
      rx_in_progress_ = false;
    }
#endif
    rx_in_progress_ = true;
    size_t bytes_read = uart_->Read(&(rx_buffer_[rx_index_]), GuiStatus_size - rx_index_);
    if (bytes_read > 0) {
      rx_index_ += bytes_read;
      last_rx_ = SystemTimer::singleton().now();
    }
  }

#if !defined(UART_VIA_DMA)
  // TODO do away with timeout-based reception once we have framing in place,
  // but it will work for Alpha build for now
  if (rx_in_progress_ && IsTimeToProcessPacket()) {
    pb_istream_t stream = pb_istream_from_buffer(rx_buffer_, rx_index_);
    GuiStatus new_gui_status = GuiStatus_init_zero;
    if (pb_decode(&stream, GuiStatus_fields, &new_gui_status)) {
      *gui_status = new_gui_status;
    } else {
      // TODO: Log an error.
    }
    rx_index_ = 0;
    rx_in_progress_ = false;
  }
#endif
}

void Comms::Handler(const ControllerStatus &controller_status, GuiStatus *gui_status) {
  ProcessTx(controller_status);
  ProcessRx(gui_status);
}
