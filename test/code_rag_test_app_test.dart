import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensions.isValidEmail', () {
    test('returns true for valid .com emails', () {
      expect('test@email.com'.isValidEmail, isTrue);
      expect('user@mail.example.com'.isValidEmail, isTrue);
      expect('USER@EXAMPLE.COM'.isValidEmail, isTrue);
    });

    test('returns false for non-.com emails', () {
      expect('test@email.org'.isValidEmail, isFalse);
      expect('test@email.co'.isValidEmail, isFalse);
      expect('test@email.net'.isValidEmail, isFalse);
    });

    test('returns false for malformed emails', () {
      expect('testemail.com'.isValidEmail, isFalse);
      expect('@email.com'.isValidEmail, isFalse);
      expect('test@.com'.isValidEmail, isFalse);
      expect('test@email.comm'.isValidEmail, isFalse);
      expect('test@ email.com'.isValidEmail, isFalse);
    });
  });
}