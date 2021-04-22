// Copyright (C) 2020 Toitware ApS. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be found in the LICENSE file.

/// Subscribes to messages published in the appropriate cloud topic.

/// filename: subscribe.toit
 
import pubsub
topic ::= "cloud:hello-world"
 
main:
 pubsub.subscribe topic: | msg/pubsub.Message |
   sender ::= msg.sender
   data ::= msg.payload.to_string
   from ::= sender.is_device
       ? "Device $sender.hardware_id"
       : "External $sender.external_name"
   print "Received message '$data' from $from"
   msg.acknowledge

