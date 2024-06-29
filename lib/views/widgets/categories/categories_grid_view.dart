import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/categories_data.dart';
import 'package:ptc_test2/views/widgets/categories/categories_item.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
      sliver: SliverGrid.builder(
        itemCount: categoriesData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.93,
            crossAxisSpacing: AppPadding.p20,
            mainAxisSpacing: AppPadding.p20),
        itemBuilder: (context, index) {
          return CategoriesItem(index: index);
        },
      ),
    );
  }
}
