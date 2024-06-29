import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/categories_data.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.greyContainerColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              fit: BoxFit.fill,
              categoriesData[index].image,
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
          Text(
            categoriesData[index].name,
            style: AppStyles.styleSemiBold14(context),
          ),
          Text(
            categoriesData[index].type,
            style: AppStyles.styleRegular12(context),
          ),
        ],
      ),
    );
  }
}
