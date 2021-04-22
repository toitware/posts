// Copyright (C) 2021 Toitware ApS. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be found in the LICENSE file.

/**
Program measuring temperature, relative humidity, and atmospheric pressure
  with a BME280.
*/

import gpio
import serial.protocols.i2c as i2c
import drivers.bme280

main:
  bus := i2c.Bus
    --sda=gpio.Pin 21
    --scl=gpio.Pin 22
  device := bus.device 0x77
  bme := drivers.Bme280 device
  
  bme.on
  print "Temperature: $bme.read_temperature C"
  print "Humidity: $bme.read_humidity %"
  print "Pressure: $bme.read_pressure Pa"
  bme.off
