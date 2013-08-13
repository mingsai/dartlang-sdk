// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// Utility script to generate some output on stdout and stderr.

import "dart:math";
import "dart:io";

main() {
  var options = new Options();
  var blockCount = int.parse(options.arguments[0]);
  var stdoutBlockSize = int.parse(options.arguments[1]);
  var stderrBlockSize = int.parse(options.arguments[2]);
  var stdoutBlock =
      new String.fromCharCodes(new List.filled(stdoutBlockSize, 65));
  var stderrBlock =
      new String.fromCharCodes(new List.filled(stderrBlockSize, 66));
  for (int i = 0; i < blockCount; i++) {
    stdout.write(stdoutBlock);
    stderr.write(stderrBlock);
  }
  exit(int.parse(options.arguments[3]));
}
