import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_image.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';

class OrderSuccessItem extends StatelessWidget {
  const OrderSuccessItem(
      {super.key,
      required this.title,
      required this.price,
      required this.id,
      required this.time});

  final String title;
  final double price;
  final int id;
  final DateTime time;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p60),
              child: Text(
                DateFormat('dd/MM/yyyy').format(time),
                style: AppStyles.styleRegular14(context),
              ),
            ),
            Container(
              width: 74,
              height: 24,
              decoration: BoxDecoration(
                color: AppColors.successContainerColor,
                borderRadius: BorderRadius.circular(6),
              ),
              alignment: Alignment.center,
              child: Text(
                'Success',
                style: AppStyles.styleMedium12(context),
              ),
            )
          ],
        ),
        const Divider(height: AppSize.s26)
      ],
    );
  }
}
