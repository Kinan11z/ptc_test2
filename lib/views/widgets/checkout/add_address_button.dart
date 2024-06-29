import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({super.key, this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.orangeContainerColor),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.add,
              size: 12,
              color: AppColors.orangeContainerColor,
            ),
          ),
        ),
        const SizedBox(width: AppSize.s8),
        Text(
          'Add New Address',
          style: AppStyles.styleMedium14(context),
        )
      ],
    );
  }
}
