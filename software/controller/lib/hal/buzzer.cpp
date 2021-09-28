/* Copyright 2020, RespiraWorks

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

#include "buzzer.h"

#include <algorithm>

#include "clocks.h"
#include "gpio.h"
#include "timers.h"

// The buzzer we use for generating alarms on the controller board is
// part number CT-1205H-SMT-TR made by CUI.
//
// The data sheet for this part can be found here:
// https://www.cuidevices.com/product/resource/ct-1205h-smt-tr.pdf
//
// This part is designed to be driven with a 2.4kHz square wave.
//
// On the controller board, pin PB4 is used to actuate the buzzer.
// This pin is tied to timer 3 channel 1, so we can use that timer
// to generate the square wave needed to power the buzzer.

#if defined(BARE_STM32)

void Buzzer::initialize(const uint32_t cpu_frequency_hz) {
  enable_peripheral_clock(PeripheralID::Timer3);

  // Connect PB4 to TIM3_CH1, [DS] Table 17 (pg 77)
  GPIO::alternate_function(GPIO::Port::B, /*pin =*/4, GPIO::AlternativeFuncion::AF2);

  /// \TODO: either make this a member variable and/or further abstract Timers interface
  TimerReg *tmr = Timer3Base;

  // Set the frequency
  tmr->auto_reload = (cpu_frequency_hz / freqency_hz_) - 1;

  // Configure channel 1 in PWM output mode 1
  // with preload enabled.  The preload means that
  // the new PWM duty cycle gets written to a shadow
  // register and copied to the active register
  // at the start of the next cycle.
  //
  // TODO - the capture_compare_mode and capture_compare_enable registers of
  // the timer should really be converted to bit flags for better readability
  tmr->capture_compare_mode[0] = 0x0068;

  tmr->capture_compare_enable = 0x01;

  // Start with 0% duty cycle
  tmr->capture_compare[0] = 0;

  // Load the shadow registers
  tmr->event = 1;

  // Start the counter
  tmr->control_reg1.bitfield.auto_reload_preload = 1;
  tmr->control_reg1.bitfield.counter_enable = 1;
}

void Buzzer::off() {
  TimerReg *tmr = Timer3Base;
  tmr->capture_compare[0] = 0;
}

// Set the buzzer on with the specified volume (0 to 1)
void Buzzer::on(float volume) {
  TimerReg *tmr = Timer3Base;

  volume = std::clamp(volume, 0.0f, 1.0f);

  // We get maximum volume at about 80% duty cycle
  float duty = volume * 0.8f * static_cast<float>(tmr->auto_reload);
  tmr->capture_compare[0] = static_cast<int>(duty);
}

#else

/// \TODO: mock this better, can be useful for alarm testing
void Buzzer::initialize(const uint32_t cpu_frequency_hz) {}
void Buzzer::off() {}
void Buzzer::on(float volume) {}

#endif
