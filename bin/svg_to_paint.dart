library paint_to_svg;

import 'dart:io' show Directory, File, Process;
import 'dart:async';
import 'package:path/path.dart' as path;

///    USAGE:
///
///    COMMAND:
///    svg_to_paint source_file destination_file file_name command
///
///    EXAMPLE:
///    svg_to_paint /Users/user/Desktop/file.xml /Users/user/Desktop svg_icon absolute
///
///    DESCRIPTION:
///    source_file: IS THE PATH OF YOUR XML FILE, FOR EXAMPLE (/Users/user/Desktop/file.xml)
///
///    destination_file: IS THE DESTINATION PATH OF YOUR GENERATED DART FILE, FOR EXAMPLE (/Users/user/Desktop)
///
///    file_name: IS THE NAME OF YOUR FILE, FOR EXAMPLE (svg_icon)
///    command: THE command REPRESENTS THE SVG COORDINATES WHICH COULD BE 'absolute' or 'relative'.
///    YOU CAN CHOOSE THEM TYPING:
///    absolute IF YOU WANT ABSOLUTE COORDINATES
///    relative IF YOU WANT RELATIVE COORDINATES

Future main(List<String> args) async {
  final nodeCode = "const svgToPaint = require('svg_to_paint')\n" +
      "svgToPaint.generateDartCode('${args[0]}','${args[1]}','${args[2]}','${args[3]}')";

  final nodeCheckResult =
      await Process.run('node', ['--version'], runInShell: true);

  if (nodeCheckResult.exitCode != 0) {
    print('Please install Node.JS. Recommended v10+');
  }

  await new Directory('dir').create(recursive: true).then((value) async {
    await Process.run(
      'npm',
      ['install', 'svg_to_paint'],
      workingDirectory: value.path,
      runInShell: true,
    ).then((value) => print("Modules installed..."));

    await File(path.join(value.path, 'index.js'))
        .writeAsString(nodeCode)
        .then((file) async {
      print("Files Generated...");

      await Process.run(
        'node',
        ['index.js'],
        workingDirectory: value.path,
        runInShell: true,
      ).then((process) {
        print("Files Created...");
        Directory("dir").deleteSync(recursive: true);
      });
    });
  });
}
