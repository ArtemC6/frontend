import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:frontend/presentation/resources/app_colors.dart';

class BaseChatListTile extends StatelessWidget {
  final Widget trailing;
  final String name;
  final String avatar;
  const BaseChatListTile({
    super.key,
    required this.trailing,
    required this.name,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color(0xFF8BB9D6),
        child: Text(
          avatar.split('').first.toUpperCase(),
          style: AppTextStyle.bodyMedium,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 6,
      trailing: trailing,
      title: Text(
        name,
        style: AppTextStyle.bodyMedium.copyWith(
          letterSpacing: 0,
        ),
      ),
    );
  }
}

class ChatTrailing {
  static Widget chat({required VoidCallback onPressed}) => IconButton(
        onPressed: onPressed,
        icon: const Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.chat_bubble,
              color: AppColors.primaryTextColor,
            ),
            Icon(
              size: 16,
              Icons.arrow_forward,
              color: Colors.green,
            ),
          ],
        ),
      );
  static Widget waiting({required VoidCallback onPressed}) => IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.watch_later_outlined,
          color: AppColors.primaryTextColor,
        ),
      );

  static Widget call({required VoidCallback onPressed}) => IconButton(
        onPressed: onPressed,
        icon: const Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.phone_outlined,
              color: AppColors.primaryTextColor,
            ),
            Icon(
              size: 16,
              Icons.arrow_forward,
              color: Colors.green,
            ),
          ],
        ),
      );
}
