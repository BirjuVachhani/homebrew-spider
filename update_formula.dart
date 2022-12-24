// Copyright © 2020 Birju Vachhani. All rights reserved.
// Use of this source code is governed by an Apache license that can be
// found in the LICENSE file.

import 'dart:io';

/// command: update_formula.dart url sha path
/// $1: Version
/// $2: SHA macOS
/// $3: SHA Linux
void main(List<String> args) {
  if (args.length != 3) {
    stderr.writeln('Version and SHA for macOS and linux are not specified.');
    exit(0);
  }

  final String version = args[0];
  final String shaMacOS = args[1];
  final String shaLinux = args[2];
  final File formulaTemplateFile = File('spider_template.rb');
  final File formulaFile = File('Formula/spider.rb');

  String content = formulaTemplateFile.readAsStringSync();
  // Replace URL
  content = content
      .replaceAll('{{ version }}', version)
      .replaceAll('{{ sha_macos }}', shaMacOS)
      .replaceAll('{{ sha_linux }}', shaLinux);

  formulaFile.writeAsStringSync(content);
}
