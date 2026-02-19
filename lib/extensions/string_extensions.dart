extension StringExtensions on String {
  bool get isValidEmail => contains("@") && contains('.');
}
