import 'package:flutter/material.dart';
import 'package:frontend/domain/entities/message_entity.dart';
import 'package:frontend/domain/resources/message_owner_enum.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class MessageCardWidget extends StatelessWidget {
  final MessageEntity message;
  final String receiverUsername;

  const MessageCardWidget({
    super.key,
    required this.message,
    required this.receiverUsername,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: _buildMessageCard(context, message),
      ),
    );
  }

  Widget _buildMessageCard(BuildContext context, MessageEntity message) {
    if (message.owner == null) {
      return const SizedBox();
    }
    final firstCharOfReceiverUsername = receiverUsername.split('').first;
    final bool isMyMessage = message.owner == MessageOwner.me;
    final cardColor =
        isMyMessage ? AppColors.cardColorForMe : AppColors.cardColorForOther;
    final textColor =
        isMyMessage ? AppColors.textColorForMe : AppColors.textColorForOther;

    return Align(
      alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          if (!isMyMessage)
            CircleAvatar(
              maxRadius: 18,
              backgroundColor: AppColors.blueGray,
              child: Text(
                firstCharOfReceiverUsername.toUpperCase(),
                style: AppTextStyle.bodyMedium.copyWith(
                  color: Colors.white,
                  letterSpacing: 0,
                ),
              ),
            ),
          IntrinsicWidth(
            child: Container(
              constraints: BoxConstraints(
                minHeight: 44,
                minWidth: 60,
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(!isMyMessage ? 8 : 20),
                  bottomRight: Radius.circular(isMyMessage ? 8 : 20),
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                ),
                color: cardColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    message.message,
                    style: AppTextStyle.bodySmall.copyWith(
                      letterSpacing: 0,
                      color: textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
