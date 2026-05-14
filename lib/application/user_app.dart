import 'package:dart_code_rag_test_app/enums/user_role.dart';
import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';
import 'package:dart_code_rag_test_app/models/user.dart';
import 'package:dart_code_rag_test_app/services/user_service.dart';

void runUserApp() {
  final service = UserService();
  final user = User('1', 'Aya', role: UserRole.viewer);

  service.save(user);

  print(user.displayName);

  if ('test@email.com'.isValidEmail) {
    print('Valid email');
  }
}