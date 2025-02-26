import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/base_button.dart';

class ConfirmationDialogWidget extends StatelessWidget {
  const ConfirmationDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: 47,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Do you really want to find a human? They will likely be around your age',
            style: AppTextStyle.bodyLarge,
            textAlign: TextAlign.start,
          ),
        ),
        BaseButton(
          text: 'I’m sure',
          onPressed: () => context.router.popAndPush(
            const SearchingRoute(),
          ),
        ),
      ],
    );
  }
}
