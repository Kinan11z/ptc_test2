import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/products_data.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/recommended_item.dart';

class RecommendedListView extends StatelessWidget {
  const RecommendedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsData.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.s20,
        ),
        child: RecommendedItem(index: index),
      ),
    );
  }
}
