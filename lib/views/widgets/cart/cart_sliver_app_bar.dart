import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/views/widgets/custom_rich_text.dart';
import 'package:ptc_test2/views/widgets/product/reverse_button.dart';

class CartSliverAppBar extends StatelessWidget {
  const CartSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 240,
      pinned: true,
      snap: false,
      floating: false,
      backgroundColor: AppColors.white,
      title: Row(
        children: [
          const ReverseButton(),
          const SizedBox(width: AppSize.s20),
          Text(
            'Shopping Cart (${cartData.length})',
            style: AppStyles.styleRegular16(context)
                .copyWith(color: AppColors.buttonBackgroundColor),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: AppColors.yellowAppBar,
          child: Stack(
            children: [
              SvgPicture.asset(
                AppSvg.hash,
                height: 150,
                fit: BoxFit.scaleDown,
              ),
              Positioned(
                top: 60,
                child: SvgPicture.asset(
                  AppSvg.percent25,
                  height: 150,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.maxFinite,
                  height: 50,
                  alignment: Alignment.center,
                  color: AppColors.orangeContainerColor,
                  child: const CustomRichText(
                    textColor: AppColors.buttonBackgroundColor,
                    firstText: 'Use code ',
                    centerText: '#HalalFood ',
                    lastText: 'at Checkout',
                  ),
                ),
              ),
            ],
          ),
        ),
        titlePadding: const EdgeInsets.all(0),
      ),
    );
  }
}
