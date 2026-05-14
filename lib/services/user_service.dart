import 'package:dart_code_rag_test_app/contracts/repository.dart';
import 'package:dart_code_rag_test_app/mixins/logger_mixin.dart';
import 'package:dart_code_rag_test_app/models/user.dart';

class UserService with LoggerMixin implements Repository<User> {
  final List<User> _users = [];

  @override
  void save(User user) {
    _users.add(user);
    log('Saved user ${user.id}');
  }

  User? findById(String id) {
    for (final user in _users) {
      if (user.id == id) {
        log('Found user $id');
        return user;
      }
    }

    log('User not found: $id');
    return null;
  }
}