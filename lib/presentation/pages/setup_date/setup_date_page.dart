import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:frontend/presentation/router/app_router.dart';
import 'package:frontend/presentation/widgets/base_action_banner.dart';
import 'package:frontend/presentation/widgets/base_date_picker.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';

@RoutePage()
class SetupDatePage extends StatelessWidget {
  const SetupDatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      background: AppConsts.backgroundFun,
      bottom: BaseActionBanner(
        onPressed: () => context.router.push(
          LookingForRoute(),
        ),
      ),
      body: Column(
        spacing: 21,
        children: [
          RichText(
            text: const TextSpan(
              style: AppTextStyle.bodyLarge,
              children: [
                TextSpan(
                  text: 'Fortune! ',
                  style: TextStyle(
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                TextSpan(
                  text: 'We found the human for you. Choose a time',
                ),
              ],
            ),
          ),
          BaseDatePicker(
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
