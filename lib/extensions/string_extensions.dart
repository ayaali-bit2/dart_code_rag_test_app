extension StringExtensions on String {
  bool get isValidEmail => contains("@") && toLowerCase().contains(".com");
}
