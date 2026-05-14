import 'package:dart_code_rag_test_app/enums/user_role.dart';

class User {
  final String id;
  String name;
  UserRole role;

  User(this.id, this.name, {required this.role});

  void updateName(String newName) {
    name = newName;
  }

  String get displayName => '$name ($id)';
}