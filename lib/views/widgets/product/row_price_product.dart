import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/custom_rich_text.dart';

class RowPriceProduct extends StatelessWidget {
  const RowPriceProduct({super.key, required this.price});

  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomRichText(
          firstText: '\$',
          centerText: price.toInt().toString().padLeft(2, '0'),
          lastText: '/KG',
        ),
        Container(
          width: 84,
          height: 24,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(70),
          ),
          alignment: Alignment.center,
          child: Text(
            '\$22.04 OFF',
            style: AppStyles.styleRegular12(context)
                .copyWith(color: AppColors.white),
          ),
        ),
        const SizedBox(width: AppSize.s30),
        Text(
          'Reg: \$56.70 USD',
          style: AppStyles.styleRegular14(context)
              .copyWith(color: AppColors.greyTextColor),
        )
      ],
    );
  }
}
