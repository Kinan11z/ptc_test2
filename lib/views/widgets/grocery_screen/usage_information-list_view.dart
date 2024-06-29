import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/usage_information_item.dart';

class UsageInformationListView extends StatelessWidget {
  const UsageInformationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.s20,
        ),
        child: UsageInformationItem(index: index),
      ),
    );
  }
}
