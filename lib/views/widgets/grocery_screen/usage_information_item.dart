import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/data/static/usage_info_data.dart';

class UsageInformationItem extends StatelessWidget {
  const UsageInformationItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: index % 2 == 0
              ? AppColors.orangeContainerColor
              : AppColors.greyContainerColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${usageInfoData[index].number} ',
                      style: AppStyles.styleBold26(context)
                          .copyWith(color: AppColors.blackTextColor),
                    ),
                    TextSpan(
                        text: usageInfoData[index].type,
                        style: AppStyles.styleMedium26(context)
                            .copyWith(color: AppColors.blackTextColor))
                  ],
                ),
              ),
              Text(
                usageInfoData[index].subtitle,
                style: AppStyles.styleRegular14(context),
              )
            ],
          )
        ],
      ),
    );
  }
}
