import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class MessageTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value) onSendPressed;
  const MessageTextField({
    super.key,
    required this.controller,
    required this.onSendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.messageTextFieldBackgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 21),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.messageTextFieldColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  style: AppTextStyle.bodyMedium.copyWith(
                    color: const Color(0xFF49454F),
                    letterSpacing: 0,
                    height: 1,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  minLines: 1,
                  cursorColor: const Color(0xFF49454F),
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        color: AppColors.messageTextFieldColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        color: AppColors.messageTextFieldColor,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    fillColor: AppColors.messageTextFieldColor,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  color: AppColors.blueGray,
                ),
                onPressed: () => onSendPressed(controller.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
