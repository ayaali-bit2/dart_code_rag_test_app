import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensions.isValidEmail', () {
    test('returns true for well-formed email addresses', () {
      const validEmails = [
        'user@example.com',
        'first.last@sub.domain.co',
        'name+tag@domain.com',
        'local-part@domain.name',
        'a@b.co',
      ];

      for (final email in validEmails) {
        expect(email.isValidEmail, isTrue, reason: email);
      }
    });

    test('returns false for malformed email addresses', () {
      const invalidEmails = [
        'plainaddress',
        '@domain.com',
        'user@domain',
        '.user@domain.com',
        'user.@domain.com',
        'user@domain..com',
        'user@.domain.com',
        'user@domain.com.',
        ' user@domain.com',
        'user@domain.com ',
        'user@@domain.com',
        'user@domain .com',
      ];

      for (final email in invalidEmails) {
        expect(email.isValidEmail, isFalse, reason: email);
      }
    });
  });
}
