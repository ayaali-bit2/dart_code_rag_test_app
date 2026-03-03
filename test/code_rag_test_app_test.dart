import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensions.isValidEmail', () {
    test('returns true for valid .com email', () {
      expect('user@example.com'.isValidEmail, isTrue);
    });

    test('trims whitespace before validation', () {
      expect(' user@example.com '.isValidEmail, isTrue);
    });

    test('allows uppercase domain ending with .COM', () {
      expect('user@EXAMPLE.COM'.isValidEmail, isTrue);
    });

    test('rejects non-.com domains', () {
      expect('user@example.org'.isValidEmail, isFalse);
    });

    test('rejects missing @ symbol', () {
      expect('userexample.com'.isValidEmail, isFalse);
    });

    test('rejects multiple @ symbols', () {
      expect('user@@example.com'.isValidEmail, isFalse);
    });

    test('rejects spaces within local or domain part', () {
      expect('user @example.com'.isValidEmail, isFalse);
      expect('user@example. com'.isValidEmail, isFalse);
    });

    test('rejects domain without label before .com', () {
      expect('user@.com'.isValidEmail, isFalse);
    });
  });
}
