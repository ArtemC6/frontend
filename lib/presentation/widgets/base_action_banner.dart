import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:frontend/presentation/widgets/base_button.dart';

class BaseActionBanner extends StatelessWidget {
  final VoidCallback? onPressed;
  const BaseActionBanner({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 10,
      children: [
        Text(
          'If you\'ve changed\nyour mind',
          style: AppTextStyle.bodySmall.copyWith(
            letterSpacing: 0,
          ),
        ),
        BaseButton(
          text: 'To start',
          size: const Size(140, 40),
          textStyle: AppTextStyle.buttonSmall,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
