extension StringExtensions on String {
  bool get isValidEmail {
    final trimmed = trim();
    if (trimmed.isEmpty) return false;

    final atIndex = trimmed.indexOf('@');
    if (atIndex <= 0 || atIndex == trimmed.length - 1) return false;
    if (trimmed.indexOf('@', atIndex + 1) != -1) return false;

    final localPart = trimmed.substring(0, atIndex);
    final domainPart = trimmed.substring(atIndex + 1).toLowerCase();
    if (localPart.isEmpty || domainPart.isEmpty) return false;

    if (localPart.contains(' ') || domainPart.contains(' ')) return false;
    if (!domainPart.contains('.')) return false;

    if (domainPart.startsWith('.') || domainPart.endsWith('.')) return false;
    if (!domainPart.endsWith('.com')) return false;
    if (domainPart.length == 4) return false;

    return true;
  }
}
