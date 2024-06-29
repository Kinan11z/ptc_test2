import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {super.key,
      required this.centerText,
      required this.firstText,
      required this.lastText,
      this.textColor = AppColors.primaryColor});

  final String firstText;
  final String centerText;
  final String lastText;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstText,
        style: AppStyles.styleRegular16(context).copyWith(color: textColor),
        children: [
          TextSpan(
            text: centerText,
            style: AppStyles.styleBold16(context),
          ),
          TextSpan(
            text: lastText,
            style: AppStyles.styleRegular16(context).copyWith(color: textColor),
          )
        ],
      ),
    );
  }
}
