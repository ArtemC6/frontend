import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class BaseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final TextStyle textStyle;
  final Size size;
  final EdgeInsets? contentPadding;
  final bool isLoading;
  const BaseButton({
    super.key,
    this.onPressed,
    required this.text,
    this.textStyle = AppTextStyle.buttonMedium,
    this.size = const Size(200, 50),
    this.contentPadding,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: WidgetStatePropertyAll(size),
          maximumSize: WidgetStatePropertyAll(size),
          padding: WidgetStatePropertyAll(
            contentPadding ??
                const EdgeInsets.symmetric(vertical: 13, horizontal: 70),
          ),
          backgroundColor: const WidgetStatePropertyAll(Colors.blue),
        ),
        onPressed: onPressed,
        child: isLoading
            ? SizedBox(
                width: size.height / 2,
                height: size.height / 2,
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 3),
                ),
              )
            : Text(
                text,
                style: textStyle,
              ),
      ),
    );
  }
}
