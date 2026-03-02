final _whitespacePattern = RegExp(r'\s');

extension StringExtensions on String {
  bool get isValidEmail {
    if (isEmpty) {
      return false;
    }

    if (trim() != this) {
      return false;
    }

    final atIndex = indexOf('@');
    if (atIndex <= 0 || atIndex != lastIndexOf('@') || atIndex == length - 1) {
      return false;
    }

    final localPart = substring(0, atIndex);
    final domainPart = substring(atIndex + 1);

    if (localPart.isEmpty ||
        domainPart.isEmpty ||
        _whitespacePattern.hasMatch(localPart) ||
        _whitespacePattern.hasMatch(domainPart) ||
        localPart.startsWith('.') ||
        localPart.endsWith('.') ||
        domainPart.startsWith('.') ||
        domainPart.endsWith('.') ||
        localPart.contains('..') ||
        domainPart.contains('..')) {
      return false;
    }

    final dotIndex = domainPart.indexOf('.');
    if (dotIndex <= 0) {
      return false;
    }

    if (domainPart.split('.').any((segment) => segment.isEmpty)) {
      return false;
    }

    return true;
  }
}
