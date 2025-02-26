import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/pages/auth/bloc/auth_bloc.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/widgets/base_button.dart';
import 'package:frontend/presentation/widgets/base_phone_number_field.dart';

class PhoneNumberInputWidget extends StatefulWidget {
  const PhoneNumberInputWidget({super.key});

  @override
  State<PhoneNumberInputWidget> createState() => _PhoneNumberInputWidgetState();
}

class _PhoneNumberInputWidgetState extends State<PhoneNumberInputWidget> {
  final TextEditingController _numberController = TextEditingController();
  String code = AppConsts.defaultCountryIso;
  final FocusNode _focusField = FocusNode();

  @override
  void initState() {
    _focusField.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    _focusField.unfocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 48,
      children: [
        BasePhoneNumberField(
          focusNode: _focusField,
          title: 'Phone number',
          numberController: _numberController,
          onCodeChanged: (value) => setState(() {
            code = value;
          }),
        ),
        BaseButton(
          text: 'Next',
          isLoading:
              context.watch<AuthBloc>().state.status == BaseStatus.loading,
          onPressed: () => context.read<AuthBloc>().add(
                AuthEvent.enterPhoneNumber(
                  code: code,
                  number: _numberController.text,
                ),
              ),
        ),
      ],
    );
  }
}
