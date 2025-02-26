import 'package:flutter/services.dart';

class AgeFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final RegExp ageRegExp = RegExp(r'^[1-9]\d?$');
    if (ageRegExp.hasMatch(newValue.text) || newValue.text.isEmpty) {
      return newValue;
    }
    return oldValue;
  }
}
