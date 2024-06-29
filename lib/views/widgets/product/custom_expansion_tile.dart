import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    this.children = const <Widget>[],
  });
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: AppColors.transparent),
      child: ExpansionTile(
          tilePadding: const EdgeInsets.all(0),
          collapsedIconColor: AppColors.greyTextColor,
          title: Text(
            title,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: AppColors.buttonBackgroundColor),
          ),
          children: children),
    );
  }
}
