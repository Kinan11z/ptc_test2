import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';

class CustomPrimaryButton extends StatelessWidget {
  const CustomPrimaryButton({super.key, required this.text, this.onTap});

  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primaryColor),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppStyles.styleSemiBold14(context)
              .copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
