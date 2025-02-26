import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String username;
  final String avatar;
  const AppBarWidget({
    super.key,
    required this.username,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    final firstCharOfAvatar = avatar.split('').first;
    return AppBar(
      leading: IconButton(
        onPressed: () => context.router.back(),
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: const Color(0xFFFEF7FF),
      centerTitle: true,
      title: Text(
        username,
        style: AppTextStyle.bodyMedium.copyWith(
          color: Colors.black,
          letterSpacing: 0,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: CircleAvatar(
            backgroundColor: AppColors.blueGray,
            child: Text(
              firstCharOfAvatar.toUpperCase(),
              style: AppTextStyle.bodyMedium.copyWith(
                color: Colors.white,
                letterSpacing: 0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
