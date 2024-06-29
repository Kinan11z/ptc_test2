import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/cart/text_row_cart.dart';
import 'package:ptc_test2/views/widgets/product/custom_primary_button.dart';

class SalaryPrice extends StatelessWidget {
  const SalaryPrice({super.key, this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: AppColors.activeIndicatorColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: AppSize.s16),
          const TextRowCart(
            text1: 'Subtotal',
            text2: '\$30',
          ),
          const SizedBox(height: AppSize.s13),
          const TextRowCart(
            text1: 'Delivery',
            text2: '\$30',
          ),
          const SizedBox(height: AppSize.s16),
          const TextRowCart(
            text1: 'Total',
            text2: '\$30',
          ),
          const SizedBox(height: AppSize.s34),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            child:
                CustomPrimaryButton(onTap: onTap, text: 'Proceed  To checkout'),
          ),
          const SizedBox(height: AppSize.s34),
        ],
      ),
    );
  }
}
