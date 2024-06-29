import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';

class RowRating extends StatelessWidget {
  const RowRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: 17,
          initialRating: 4.5,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          unratedColor: AppColors.buttonBackgroundColor,
          ignoreGestures: true,
          itemBuilder: (context, _) => const Icon(
            Icons.star_rate_rounded,
            color: AppColors.orangeContainerColor,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(width: AppSize.s5),
        Text(
          '110 Reviews',
          style: AppStyles.styleRegular14(context)
              .copyWith(color: AppColors.greyTextColor),
        )
      ],
    );
  }
}
