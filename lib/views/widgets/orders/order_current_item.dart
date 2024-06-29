import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_image.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/product/custom_primary_button.dart';

class OrderCurrentItem extends StatelessWidget {
  const OrderCurrentItem(
      {super.key, required this.title, required this.price, required this.id});

  final String title;
  final double price;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: Image.asset(AppImage.emptyImage),
          title: Text(
            title,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: AppColors.greyDarkTextColor),
          ),
          subtitle: Text(
            '\$${price.toInt().toString()}',
            style: AppStyles.styleSemiBold14(context),
          ),
          trailing: RichText(
            text: TextSpan(
              text: 'ID: ',
              style: AppStyles.styleRegular14(context),
              children: [
                TextSpan(
                    text: '#$id',
                    style: AppStyles.styleRegular14(context)
                        .copyWith(color: AppColors.black)),
              ],
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.asset(AppImage.track)),
            Expanded(
              child: Column(
                children: [
                  Text(
                    'Your $title are on the way',
                    style: AppStyles.styleMedium20(context),
                  ),
                  const SizedBox(height: AppSize.s10),
                  const Padding(
                    padding: EdgeInsets.only(right: AppPadding.p25),
                    child: CustomPrimaryButton(text: 'Track Order'),
                  )
                ],
              ),
            ),
          ],
        ),
        const Divider(height: AppSize.s26)
      ],
    );
  }
}
