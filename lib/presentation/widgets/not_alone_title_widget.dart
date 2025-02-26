import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class NotAloneTitleWidget extends StatelessWidget {
  const NotAloneTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: AppTextStyle.displayLarge,
        children: [
          TextSpan(
            text: 'belik',
            style: TextStyle(
              color: AppColors.secondaryTextColor,
            ),
          ),
          TextSpan(text: ' —\n'),
          TextSpan(
            text: 'you’re not\nalone',
          ),
        ],
      ),
    );
  }
}
