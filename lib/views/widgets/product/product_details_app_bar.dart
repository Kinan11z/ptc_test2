import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/my_cart.dart';

import 'package:ptc_test2/views/widgets/product/reverse_button.dart';

class ProductDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductDetailsAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: AppPadding.p20),
        child: Text(
          title,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: AppColors.buttonBackgroundColor),
        ),
      ),
      leadingWidth: 40,
      leading: Transform.translate(
          offset: const Offset(AppSize.s24, 0), child: const ReverseButton()),
      actions: const [
        Padding(
            padding: EdgeInsets.only(right: AppPadding.p12), child: MyCart()),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
