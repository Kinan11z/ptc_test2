import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/core/data/static/products_data.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/add_button.dart';

class DealsOnFruitAndTeaItem extends StatelessWidget {
  const DealsOnFruitAndTeaItem(
      {super.key, required this.index, required this.listData});

  final int index;
  final List listData;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.greyContainerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 60,
            child: Image.asset(
              listData[index].photo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: AppPadding.p22),
            child: Align(
                alignment: Alignment.centerRight,
                child: AddButton(
                  onTap: () {
                    cartData.add(listData[index]);
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppMargin.m10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${listData[index].price.toInt()}',
                  style: AppStyles.styleSemiBold16(context),
                ),
                Text(
                  listData[index].name,
                  style: AppStyles.styleRegular12(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
