import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/views/screens/shopping_cart_offer.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key, this.iconColor = AppColors.buttonBackgroundColor});

  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(
        badgeColor: AppColors.orangeContainerColor,
        shape: badges.BadgeShape.circle,
      ),
      badgeContent: Text(
        '${cartData.length}',
        style:
            AppStyles.styleSemiBold14(context).copyWith(color: AppColors.white),
      ),
      position: badges.BadgePosition.topEnd(top: -12, end: -6),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ShoppingCartOffer(),
            ),
          );
        },
        child: SvgPicture.asset(
          AppSvg.bag,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
