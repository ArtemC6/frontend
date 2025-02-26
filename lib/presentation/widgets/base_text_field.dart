import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class BaseTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final void Function(String)? onSubmitted;
  const BaseTextField({
    super.key,
    this.controller,
    this.hintText,
    this.title,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        if (title != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title ?? '',
              textAlign: TextAlign.start,
              style: AppTextStyle.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        TextField(
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          inputFormatters: inputFormatters,
          focusNode: focusNode,
          onSubmitted: onSubmitted,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            hintText: hintText,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
              ),
            ),
            fillColor: AppColors.backgroundColor,
          ),
        ),
      ],
    );
  }
}
