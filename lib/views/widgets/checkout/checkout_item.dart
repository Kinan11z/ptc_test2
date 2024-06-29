import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';
import 'package:ptc_test2/core/constants/app_values.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem(
      {super.key,
      required this.isChecked,
      required this.title,
      required this.address});

  final bool isChecked;
  final String title;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: isChecked
            ? Border.all(color: AppColors.orangeContainerColor, width: 2)
            : Border.all(color: AppColors.checkoutBorderColor, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: AppColors.buttonBackgroundColor),
                ),
                Text(
                  address,
                  style: AppStyles.styleSemiBold14(context)
                      .copyWith(color: AppColors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Visibility(
                    visible: isChecked,
                    maintainSize: true,
                    maintainState: true,
                    maintainAnimation: true,
                    child: SvgPicture.asset(AppSvg.checkout)),
                Text(
                  'Edit',
                  style: AppStyles.styleMedium12(context),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
