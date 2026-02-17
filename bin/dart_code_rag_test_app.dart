import 'package:dart_code_rag_test_app/models/user.dart';
import 'package:dart_code_rag_test_app/services/user_service.dart';
import 'package:dart_code_rag_test_app/extensions/string_extensions.dart';


void main() {
  var service = UserService();
  var user = User("1", "Aya");

  service.save(user);

  print(user.displayName);

  if ("test@email.com".isValidEmail) {
    print("Valid email");
  }
}
