import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: const BoxDecoration(
            color: AppColors.primaryColor, shape: BoxShape.circle),
        child: const Icon(
          size: 15,
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }
}
