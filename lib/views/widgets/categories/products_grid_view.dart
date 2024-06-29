import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/fishes_data.dart';
import 'package:ptc_test2/views/screens/product_details_page_view.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/deals_on_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: fishesData.length,
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p25, horizontal: AppPadding.p20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.86,
          crossAxisSpacing: AppPadding.p12,
          mainAxisSpacing: AppPadding.p16),
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPageView(
                      index: index,
                      product: fishesData[index],
                    ),
                  ),
                ),
            child: DealsOnFruitAndTeaItem(listData: fishesData, index: index));
      },
    );
  }
}
