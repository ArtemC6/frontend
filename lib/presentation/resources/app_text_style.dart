import 'package:flutter/widgets.dart';
import 'package:frontend/presentation/resources/app_colors.dart';

class AppTextStyle {
  /// DisplayLarge, font size 57, font weight SemiBold (FontWeight.w600)
  static const TextStyle displayLarge = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 57,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w600,
  );

  /// BodyLarge, font size 24, font weight SemiBold (FontWeight.w600)
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 24,
    letterSpacing: -2.0,
    fontWeight: FontWeight.w600,
  );

  /// BodyMedium, font size 20, font weight Medium (FontWeight.w500)
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 20,
    letterSpacing: -2.0,
    fontWeight: FontWeight.w500,
  );

  /// BodySmall, font size 16, font weight SemiBold (FontWeight.w600)
  static const TextStyle bodySmall = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 16,
    letterSpacing: -2.0,
    fontWeight: FontWeight.w600,
  );

  /// ButtonLarge, font size 22, font weight Medium (FontWeight.w500)
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.secondaryTextColor,
    fontSize: 22,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
  );

  /// ButtonMedium, font size 20, font weight Bold (FontWeight.w700)
  static const TextStyle buttonMedium = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.secondaryTextColor,
    fontSize: 20,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w700,
  );

  /// ButtonSmall, font size 14, font weight Bold (FontWeight.w700)
  static const TextStyle buttonSmall = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.secondaryTextColor,
    fontSize: 14,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w700,
  );

  /// CalendarLarge, font size 24, font weight medium (FontWeight.w500)
  static const TextStyle calendarLarge = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 24,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
  );

  /// CalendarLarge, font size 20, font weight medium (FontWeight.w500)
  static const TextStyle calendarMedium = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 20,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
  );

  /// CalendarLarge, font size 16, font weight medium (FontWeight.w500)
  static const TextStyle calendarSmall = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.primaryTextColor,
    fontSize: 16,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w500,
  );
}
