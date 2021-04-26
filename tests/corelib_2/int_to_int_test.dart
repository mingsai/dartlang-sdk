// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.9

import 'package:expect/expect.dart';

main() {
  const int big = 0x123456789AB0000 + 0xCDEF; // Slightly rounded on web.

  Expect.equals(0, 0.toInt());
  Expect.equals(1, 1.toInt());
  Expect.equals(0x1234, 0x1234.toInt());
  Expect.equals(0x12345678, 0x12345678.toInt());
  Expect.equals(0x123456789AB, 0x123456789AB.toInt());
  Expect.equals(big, big.toInt());
  Expect.equals(-1, (-1).toInt());
  Expect.equals(-0x1234, (-0x1234).toInt());
  Expect.equals(-0x12345678, (-0x12345678).toInt());
  Expect.equals(-0x123456789AB, (-0x123456789AB).toInt());
  Expect.equals(-big, (-big).toInt());

  Expect.isTrue(0.toInt() is int);
  Expect.isTrue(1.toInt() is int);
  Expect.isTrue(0x1234.toInt() is int);
  Expect.isTrue(0x12345678.toInt() is int);
  Expect.isTrue(0x123456789AB.toInt() is int);
  Expect.isTrue(big.toInt() is int);
  Expect.isTrue((-1).toInt() is int);
  Expect.isTrue((-0x1234).toInt() is int);
  Expect.isTrue((-0x12345678).toInt() is int);
  Expect.isTrue((-0x123456789AB).toInt() is int);
  Expect.isTrue((-big).toInt() is int);
}
