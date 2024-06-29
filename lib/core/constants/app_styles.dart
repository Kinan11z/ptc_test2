import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/functions/responsive_text.dart';

abstract class AppStyles {
  //*************  50px   *********** */
  //? Bold 50px
  static TextStyle styleBold50(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w800,
    );
  }

  //? SemiBold 50px
  static TextStyle styleSemiBold50(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 50px
  static TextStyle styleMedium50(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 50px
  static TextStyle styleRegular50(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 50),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  30px   *********** */
  //? Bold 30px
  static TextStyle styleBold30(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 30px
  static TextStyle styleSemiBold30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 30px
  static TextStyle styleMedium30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 30px
  static TextStyle styleRegular30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  26px   *********** */
  //? Bold 26px
  static TextStyle styleBold26(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 26px
  static TextStyle styleSemiBold26(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 26px
  static TextStyle styleMedium26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 26px
  static TextStyle styleRegular26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  20px   *********** */
  //? Bold 20px
  static TextStyle styleBold20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 20px
  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 20px
  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 20px
  static TextStyle styleRegular20(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  18px   *********** */
  //? Bold 18px
  static TextStyle styleBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 18px
  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 18px
  static TextStyle styleMedium18(context) {
    return TextStyle(
      color: AppColors.textGreyColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 18px
  static TextStyle styleRegular18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  16px   *********** */
  //? Bold 16px
  static TextStyle styleBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 16px
  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 16px
  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 16px
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: AppColors.greyDarkTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  14px   *********** */
  //? Bold 14px
  static TextStyle styleBold14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 14px
  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      color: AppColors.blackTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 14px
  static TextStyle styleMedium14(context) {
    return TextStyle(
      color: AppColors.buttonBackgroundColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 14px
  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: AppColors.hintTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }

  //*************  12px   *********** */
  //? Bold 12px
  static TextStyle styleBold12(context) {
    return TextStyle(
      color: AppColors.activeIndicatorColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w700,
    );
  }

  //? SemiBold 12px
  static TextStyle styleSemiBold12(context) {
    return TextStyle(
      color: AppColors.hintTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w600,
    );
  }

  //? Medium 12px
  static TextStyle styleMedium12(context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w500,
    );
  }

  //? Regular 12px
  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: AppColors.greyDarkTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Manrope',
      fontWeight: FontWeight.w400,
    );
  }
}
