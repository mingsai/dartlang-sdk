// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.9

part "self_test.dart";
//   ^^^^^^^^^^^^^^^^
// [analyzer] COMPILE_TIME_ERROR.PART_OF_NON_PART

main() {
  print('should not be able to recursively include self as library part');
}
