import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/views/widgets/categories/products_grid_view.dart';

class ProductsButtonBar extends StatelessWidget {
  const ProductsButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          ButtonsTabBar(
            backgroundColor: AppColors.orangeContainerColor,
            unselectedBackgroundColor: Colors.transparent,
            borderColor: AppColors.orangeContainerColor,
            borderWidth: 1,
            radius: 20,
            unselectedBorderColor: AppColors.greyTextColor,
            unselectedLabelStyle:
                const TextStyle(color: AppColors.greyDarkTextColor),
            contentCenter: true,
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            tabs: const [
              Tab(text: "Popular"),
              Tab(text: "Low Price"),
              Tab(text: 'Small Fishes'),
              Tab(text: 'Big'),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                ProductsGridView(),
                ProductsGridView(),
                ProductsGridView(),
                ProductsGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
