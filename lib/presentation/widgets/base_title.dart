import 'package:flutter/widgets.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class BaseTitle extends StatelessWidget {
  final String highlightedText;
  final String text;
  const BaseTitle({
    super.key,
    required this.highlightedText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppTextStyle.bodyLarge,
        children: [
          TextSpan(
            text: highlightedText,
            style: const TextStyle(
              color: AppColors.secondaryTextColor,
            ),
          ),
          TextSpan(
            text: text,
          ),
        ],
      ),
    );
  }
}
