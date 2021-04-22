// Copyright (C) 2020 Toitware ApS. All rights reserved.
// Use of this source code is governed by an MIT-style license that can be found in the LICENSE file.

/// Publishes a message in the appropriate cloud topic.

/// filename: publish.toit

import pubsub
topic ::= "cloud:hello-world"

main:
  time := Time.now.local
  
  pubsub.publish topic "A message was published at $(%02d time.h):$(%02d time.m)"
  print "A message has been published"
