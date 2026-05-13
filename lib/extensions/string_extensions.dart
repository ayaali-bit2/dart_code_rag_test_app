extension StringExtensions on String {
  bool get isValidEmail {
    final emailRegex = RegExp(
      r'^[^@\s]+@([^\s@.]+\.)*[^@\s@.]+\.com$',
      caseSensitive: false,
    );
    return emailRegex.hasMatch(this);
  }
}