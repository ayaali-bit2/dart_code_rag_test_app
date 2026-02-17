import '../models/user.dart';

abstract class Repository<T> {
  void save(T item);
}

class UserService implements Repository<User> {
  final List<User> _users = [];

  @override
  void save(User user) {
    _users.add(user);
  }

 User? findById(String id) {
  try {
    return _users.firstWhere((u) => u.id == id);
  } catch (e) {
    return null;
  }
}

}