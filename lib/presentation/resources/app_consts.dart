import 'package:flutter/material.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';

class AppConsts {
  static const defaultPhoneCountryCode = '+54';
  static const defaultCountryIso = 'AR';

  static final Widget backgroundSad = Image.asset(
    'assets/images/background_sad.jpg',
    fit: BoxFit.cover,
    alignment: Alignment.center,
  );

  static final Widget backgroundFun = Image.asset(
    'assets/images/background_fun.jpg',
    fit: BoxFit.cover,
    alignment: Alignment.center,
  );

  static final Widget hindiGuy = Image.asset(
    'assets/images/hindi_guy.jpg',
    fit: BoxFit.cover,
    alignment: Alignment.center,
  );

  static const EdgeInsets basePadding = EdgeInsets.only(
    left: 21,
    right: 21,
    top: 70,
    bottom: 40,
  );

  static const TextSelectionThemeData textSelectionTheme =
      TextSelectionThemeData(
    cursorColor: AppColors.primaryTextColor,
    selectionColor: AppColors.primaryColor,
    selectionHandleColor: AppColors.primaryColor,
  );

  static final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.all(16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    hintStyle: AppTextStyle.bodyMedium.copyWith(
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: AppColors.hintColor,
    ),
    labelStyle: AppTextStyle.bodyMedium.copyWith(
        fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.amber),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
      ),
    ),
    filled: true,
    fillColor: AppColors.backgroundColor,
    prefixIconColor: AppColors.primaryTextColor,
  );

  static final ThemeData appTheme = ThemeData(
    textSelectionTheme: textSelectionTheme,
    inputDecorationTheme: inputDecorationTheme,
    canvasColor: AppColors.backgroundColor,
    textTheme: TextTheme(
      bodyLarge: AppTextStyle.bodyMedium.copyWith(
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: AppColors.primaryTextColor,
      ),
    ),
    // Radio Buttons settings
    listTileTheme: const ListTileThemeData(
      horizontalTitleGap: -4, //here adjust based on your need
    ),
  );
}
