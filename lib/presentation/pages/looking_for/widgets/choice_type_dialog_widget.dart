import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/presentation/bloc/user/user_bloc.dart';
import 'package:frontend/presentation/resources/app_enums.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:frontend/presentation/widgets/base_button.dart';
import 'package:frontend/presentation/widgets/base_radio_list_tile.dart';

class ChoiceTypeDialogWidget extends StatefulWidget {
  const ChoiceTypeDialogWidget({super.key});

  @override
  State<ChoiceTypeDialogWidget> createState() => _ChoiceTypeDialogWidgetState();
}

class _ChoiceTypeDialogWidgetState extends State<ChoiceTypeDialogWidget> {
  String _choice = 'chat';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'What are you looking for?',
            textAlign: TextAlign.left,
            style: AppTextStyle.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 21,
            bottom: 38,
          ),
          child: BaseRadioListTile(
            onChanged: (value) => setState(() {
              _choice = value;
            }),
            initialValue: _choice,
            values: const {
              'chat': 'Just to chat',
              'specific': 'Talk about anything specifically',
              'anything': 'Talk about anything',
            },
          ),
        ),
        BaseButton(
          text: 'Next',
          isLoading:
              context.watch<UserBloc>().state.status == BaseStatus.loading,
          onPressed: () => context.read<UserBloc>().add(
                UserEvent.updateLookingFor(_choice),
              ),
        ),
      ],
    );
  }
}
