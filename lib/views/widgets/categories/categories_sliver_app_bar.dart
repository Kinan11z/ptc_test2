import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/my_cart.dart';

class CategoriesSliverAppBar extends StatelessWidget {
  const CategoriesSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 220,
      pinned: true,
      snap: false,
      floating: false,
      title: Row(
        children: [
          Text(
            'Hey, Halal',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          SvgPicture.asset(AppSvg.search),
          const SizedBox(width: AppSize.s37),
          const MyCart(
            iconColor: AppColors.white,
          )
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSize.s30),
              Text(
                'Shop',
                style: AppStyles.styleRegular50(context),
              ),
              Text(
                'By Category',
                style: AppStyles.styleBold50(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
