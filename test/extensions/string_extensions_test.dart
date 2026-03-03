import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('StringExtensions.isValidEmail', () {
    test('returns true for valid email formats', () {
      final validEmails = [
        'user@example.com',
        'first.last@domain.co',
        'name+tag@sub.domain.net',
        'simple@domain.io',
        'a.b@c.dev',
      ];

      for (final email in validEmails) {
        expect(email.isValidEmail, isTrue, reason: 'Expected "$email" to be valid.');
      }
    });

    test('returns false for invalid email formats', () {
      final invalidEmails = [
        '',
        'plainaddress',
        'missingatsign.com',
        'missingdot@com',
        '@no.local.part',
        'no.domain.part@',
        'two@@signs@domain.com',
        'user@.domain.com',
        'user@domain.com.',
        'user@domain..com',
        'user@@domain.com',
        'user@domaincom',
        'user@do..main.com',
      ];

      for (final email in invalidEmails) {
        expect(email.isValidEmail, isFalse, reason: 'Expected "$email" to be invalid.');
      }
    });
  });
}
