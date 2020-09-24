import 'dart:convert';
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test on file', () {
    test('Check if file has been created ', () async {
      await Process.run(
          'flutter',
          [
            'pub',
            'run',
            'svg_to_paint',
            '/Users/user/Desktop/google_icon.xml',
            '/Users/user/Desktop',
            'icon',
            'absolute'
          ],
          runInShell: true);

      expect(
          File('/Users/user/Desktop/icon.dart').existsSync(), true);
    });

    test('Check with MD5 hash', () {
      expect(
          md5.convert(utf8.encode(File('/Users/user/Desktop/icon.dart').readAsStringSync())).toString(),
          '3e13645991eb27fa8abb17e6abd240dc');
    });
  });
}
