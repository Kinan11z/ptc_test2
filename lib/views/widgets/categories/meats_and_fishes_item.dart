import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/data/static/meats_and_fishes_data.dart';
import 'package:ptc_test2/views/widgets/custom_rich_text.dart';

class MeatsAndFishesItem extends StatelessWidget {
  const MeatsAndFishesItem({super.key, required this.index, this.onTap});
  final int index;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 167,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Image.asset(
              meatsAndFishesData[index].image,
              fit: BoxFit.fill,
            )),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        meatsAndFishesData[index].title,
                        style: AppStyles.styleBold18(context),
                      ),
                      Text(meatsAndFishesData[index].subtitle,
                          style: AppStyles.styleRegular16(context)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Starting from',
                          style: AppStyles.styleRegular14(context)),
                      CustomRichText(
                        firstText: '\$',
                        centerText: meatsAndFishesData[index]
                            .price
                            .toInt()
                            .toString()
                            .padLeft(2, '0'),
                        lastText: '/KG',
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
