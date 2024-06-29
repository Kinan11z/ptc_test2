import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_image.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 269,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.orangeContainerColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(AppImage.emptyImage),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get',
                style: AppStyles.styleRegular20(context),
              ),
              Text(
                '50%  OFF',
                style: AppStyles.styleBold26(context),
              ),
              RichText(
                text: TextSpan(
                  text: 'On first ',
                  style: AppStyles.styleRegular20(context),
                  children: [
                    TextSpan(
                      text: '03 ',
                      style: AppStyles.styleSemiBold20(context),
                    ),
                    TextSpan(
                      text: 'Order ',
                      style: AppStyles.styleRegular20(context),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
