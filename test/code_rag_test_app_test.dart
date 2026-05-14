import 'package:dart_code_rag_test_app/enums/user_role.dart';
import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';
import 'package:dart_code_rag_test_app/models/user.dart';
import 'package:dart_code_rag_test_app/services/user_service.dart';
import 'package:test/test.dart';

void main() {
  group('User model', () {
    test('displayName returns "<name> (<id>)"', () {
      final user = User('1', 'Aya', role: UserRole.admin);

      expect(user.displayName, 'Aya (1)');
    });

    test('updateName updates user name', () {
      final user = User('1', 'Aya', role: UserRole.editor);

      user.updateName('Ali');

      expect(user.name, 'Ali');
      expect(user.displayName, 'Ali (1)');
    });
  });

  group('UserService', () {
    test('save stores user and findById returns it', () {
      final service = UserService();
      final user = User('42', 'Mina', role: UserRole.viewer);

      service.save(user);
      final found = service.findById('42');

      expect(found, isNotNull);
      expect(found?.id, '42');
      expect(found?.name, 'Mina');
      expect(found?.role, UserRole.viewer);
    });

    test('findById returns null when user does not exist', () {
      final service = UserService();

      final found = service.findById('missing');

      expect(found, isNull);
    });
  });

  group('StringExtensions.isValidEmail', () {
    test('returns true for a valid email format', () {
      expect('aya@example.com'.isValidEmail, isTrue);
    });

    test('returns false for invalid email formats', () {
      expect('ayaexample.com'.isValidEmail, isFalse);
      expect('aya@localhost'.isValidEmail, isFalse);
      expect('@example.com'.isValidEmail, isFalse);
      expect('aya@example'.isValidEmail, isFalse);
    });
  });
}