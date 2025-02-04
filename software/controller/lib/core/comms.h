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

#pragma once

#include <cstdint>
#include <optional>

#include "frame_detector.h"
#include "network_protocol.pb.h"
#include "proto_traits.h"
#include "uart_dma.h"
#include "uart_rx_buffer.h"
#include "uart_stream.h"

/// \TODO Either template the Comms class and/or have it take a truly abstract Channel. This class
///   only requires that UartRxBuffer accept it (see what functions it wants) HAL expects it to have
///   UARTInterruptHandler, TxDMAInterruptHandler, RxDMAInterruptHandler

// This module periodically sends messages to the GUI device and receives
// messages from the GUI.  The only way it communicates with other modules is
// by modifying the gui_status pointer in CommsHandler.
class Comms {
 public:
  explicit Comms(UART::Channel *uart);

  void Initialize();

  // `controller_status` should be the controller's current status.  It's sent
  // periodically to the GUI.  When we receive a message from the GUI, we update
  // gui_status accordingly.
  void Handler(const ControllerStatus &controller_status, GuiStatus *gui_status);

 private:
  // Our outgoing (framed) ControllerStatus proto is stored in tx_buffer.
  UartStream<ProtoTraits<ControllerStatus>::MaxFrameSize> tx_buffer_;
  std::optional<Time> last_tx_{std::nullopt};

  // Our incoming (framed) GuiStatus proto is buffered in rx_buffer.
  static constexpr size_t RxBufferSize{ProtoTraits<GuiStatus>::MaxFrameSize};
  UartRxBuffer<RxBufferSize> rx_buffer_;
  Time last_rx_{microsSinceStartup(0)};
  FrameDetector<RxBufferSize> frame_detector_;

  void ProcessTx(const ControllerStatus &controller_status);
  void ProcessRx(GuiStatus *gui_status);

  static constexpr Duration TxInterval{milliseconds(30)};
};
