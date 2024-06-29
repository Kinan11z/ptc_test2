import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';

class TextRowCart extends StatelessWidget {
  const TextRowCart({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: AppColors.greyDarkTextColor),
          ),
          Text(
            text2,
            style: AppStyles.styleMedium14(context),
          ),
        ],
      ),
    );
  }
}
