// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.9

library test.runtime_type_test;

import 'dart:mirrors';

import 'package:expect/expect.dart';

class A {}

class B {
  get runtimeType => A;
}

main() {
  Expect.equals(reflect(new B()).type, reflectClass(B));
}
