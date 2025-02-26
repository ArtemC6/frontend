import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_consts.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final Widget? background;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final Widget? bottom;
  final Alignment bottomAlign;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const BaseScaffold({
    super.key,
    required this.body,
    this.padding,
    this.appBar,
    this.background,
    this.bottom,
    this.bottomAlign = Alignment.bottomRight,
    this.backgroundColor = AppColors.backgroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      body: background != null || bottom != null
          ? Stack(
              fit: StackFit.expand,
              children: [
                if (background != null) background!,
                _buildBody(),
                if (bottom != null)
                  Padding(
                    padding: padding ?? AppConsts.basePadding,
                    child: Align(
                      alignment: bottomAlign,
                      child: bottom!,
                    ),
                  ),
              ],
            )
          : _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: padding ?? AppConsts.basePadding,
      child: body,
    );
  }
}
