class PhoneNumberTrimmer {
  static onlyNumbers(String value) {
    final regExp = RegExp(r'\D');
    return value.replaceAll(regExp, '');
  }
}
