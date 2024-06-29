import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';

class ReverseButton extends StatelessWidget {
  const ReverseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.activeIndicatorColor, shape: BoxShape.circle),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          size: 10,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
