import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/views/widgets/categories/meats_and_fishes_list_view.dart';

class CategoriesButtomBar extends StatelessWidget {
  const CategoriesButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
            width: 150,
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            tabs: const [
              Tab(text: "Meats & Fishes"),
              Tab(text: "Vegetables"),
              Tab(text: 'Fruits'),
            ],
          ),
          const Expanded(
            child: TabBarView(
              children: [
                MeatsAndFishesListView(),
                MeatsAndFishesListView(),
                MeatsAndFishesListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
