import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/views/widgets/product/reverse_button.dart';

class CheckoutAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CheckoutAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      leadingWidth: 40,
      leading: Transform.translate(
          offset: const Offset(AppSize.s24, 0), child: const ReverseButton()),
      title: Padding(
        padding: const EdgeInsets.only(left: AppPadding.p20),
        child: Text(
          'Shopping Cart (${cartData.length})',
          style: AppStyles.styleRegular16(context)
              .copyWith(color: AppColors.buttonBackgroundColor),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
