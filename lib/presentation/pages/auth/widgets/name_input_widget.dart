import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/pages/auth/bloc/auth_bloc.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/widgets/base_button.dart';
import 'package:frontend/presentation/widgets/base_text_field.dart';

class NameInputWidget extends StatefulWidget {
  const NameInputWidget({super.key});

  @override
  State<NameInputWidget> createState() => _NameInputWidgetState();
}

class _NameInputWidgetState extends State<NameInputWidget> {
  final TextEditingController _controller = TextEditingController();

  void onSubmitted(BuildContext context) {
    context.read<AuthBloc>().add(
          AuthEvent.enterUsername(
            username: _controller.text,
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
          keyboardType: TextInputType.name,
          title: 'What\'s your name?',
          hintText: 'Name',
          controller: _controller,
          onSubmitted: (_) => onSubmitted(context),
        ),
        BaseButton(
          text: 'Start',
          isLoading:
              context.watch<AuthBloc>().state.status == BaseStatus.loading,
          onPressed: () => onSubmitted(context),
        ),
      ],
    );
  }
}
