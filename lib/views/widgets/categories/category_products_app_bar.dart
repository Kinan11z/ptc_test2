import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/my_cart.dart';

class CategoryProductsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CategoryProductsAppBar({super.key, required this.title});

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
        offset: const Offset(24, 0),
        child: Container(
          decoration: const BoxDecoration(
              color: AppColors.activeIndicatorColor, shape: BoxShape.circle),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 10,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      actions: [
        SvgPicture.asset(AppSvg.search,
            colorFilter: const ColorFilter.mode(
                AppColors.buttonBackgroundColor, BlendMode.srcIn)),
        const SizedBox(width: AppSize.s37),
        const Padding(
            padding: EdgeInsets.only(right: AppPadding.p12), child: MyCart()),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
