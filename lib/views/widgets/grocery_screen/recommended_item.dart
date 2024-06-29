import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/core/data/static/products_data.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/add_button.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.greyContainerColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              productsData[index].photo,
              height: 68,
              width: 68,
            ),
          ),
          const Divider(
            height: AppSize.s18,
            endIndent: AppSize.s14,
            indent: AppSize.s16,
            color: AppColors.textGreyColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSize.s14),
            child: Text(
              productsData[index].name,
              style: AppStyles.styleMedium14(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSize.s14),
            child: Text(
              productsData[index].type,
              style: AppStyles.styleRegular12(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.s14, vertical: AppSize.s10),
            child: Stack(
              children: [
                Container(
                  height: 24,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: AppSize.s12),
                      Text(
                        'Unit ',
                        style: AppStyles.styleRegular12(context)
                            .copyWith(color: AppColors.hintTextColor),
                      ),
                      Text(
                        '\$${productsData[index].price.toInt().toString().padLeft(2, '0')}',
                        style: AppStyles.styleSemiBold14(context),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: AddButton(
                      onTap: () {
                        cartData.add(productsData[index]);
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
