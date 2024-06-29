import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/meats_and_fishes_data.dart';
import 'package:ptc_test2/views/screens/category_products.dart';
import 'package:ptc_test2/views/widgets/categories/meats_and_fishes_item.dart';

class MeatsAndFishesListView extends StatelessWidget {
  const MeatsAndFishesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meatsAndFishesData.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p24, vertical: AppPadding.p15),
        child: MeatsAndFishesItem(
          index: index,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryProducts(
                  title: meatsAndFishesData[index].title,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
