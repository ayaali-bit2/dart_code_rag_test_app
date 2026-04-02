extension StringExtensions on String {
  bool get isValidEmail {
    final trimmed = trim();
    if (trimmed.isEmpty) {
      return false;
    }

    final atIndex = trimmed.indexOf('@');
    if (atIndex <= 0 || atIndex != trimmed.lastIndexOf('@')) {
      return false;
    }

    if (atIndex == trimmed.length - 1) {
      return false;
    }

    final dotIndex = trimmed.indexOf('.', atIndex + 2);
    if (dotIndex == -1 || dotIndex == trimmed.length - 1) {
      return false;
    }

    if (trimmed.contains('..')) {
      return false;
    }

    return true;
  }
}
