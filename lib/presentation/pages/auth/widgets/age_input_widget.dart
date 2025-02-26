import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/helpers/age_formatter.dart';
import 'package:frontend/presentation/pages/auth/bloc/auth_bloc.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/widgets/base_button.dart';
import 'package:frontend/presentation/widgets/base_text_field.dart';

class AgeInputWidget extends StatefulWidget {
  const AgeInputWidget({super.key});

  @override
  State<AgeInputWidget> createState() => _AgeInputWidgetState();
}

class _AgeInputWidgetState extends State<AgeInputWidget> {
  final TextEditingController _controller = TextEditingController();
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

  void onSubmitted(BuildContext context) {
    context.read<AuthBloc>().add(
          AuthEvent.enterAge(
            age: _controller.text,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 47,
      children: [
        BaseTextField(
          focusNode: _focusField,
          controller: _controller,
          title: 'Age',
          hintText: 'Age',
          keyboardType: TextInputType.number,
          inputFormatters: [
            AgeFormatter(),
          ],
        ),
        BaseButton(
          text: 'Next',
          isLoading:
              context.watch<AuthBloc>().state.status == BaseStatus.loading,
          onPressed: () => onSubmitted(context),
        ),
      ],
    );
  }
}
