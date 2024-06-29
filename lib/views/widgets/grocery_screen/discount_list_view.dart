import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/discount_item.dart';

class DiscountListView extends StatelessWidget {
  const DiscountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.s20,
          ),
          child: DiscountItem()),
    );
  }
}
