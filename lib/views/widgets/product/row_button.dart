import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/product/custom_border_button.dart';
import 'package:ptc_test2/views/widgets/product/custom_primary_button.dart';

class RowButton extends StatelessWidget {
  const RowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomBorderButton(
            onTap: () {},
            text: 'Add To Cart',
          ),
        ),
        const SizedBox(width: AppSize.s12),
        Expanded(
          child: CustomPrimaryButton(
            text: 'Buy Now',
            onTap: () {},
          ),
        )
      ],
    );
  }
}
