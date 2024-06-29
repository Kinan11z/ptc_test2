import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_svg.dart';

class SearchBarApp extends StatelessWidget {
  const SearchBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors.searchFieldColor,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        hintText: 'Search Products or store',
        prefixIcon: SvgPicture.asset(
          AppSvg.search,
          fit: BoxFit.none,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: AppStyles.styleMedium14(context)
            .copyWith(color: AppColors.hintTextColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
