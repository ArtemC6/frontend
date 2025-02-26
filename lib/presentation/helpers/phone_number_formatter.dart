// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberFormatter {
  static final formatter = MaskTextInputFormatter(
    mask: '(###) ### ##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.eager,
  );
}
