import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/widgets/categories/categories_buttom_bar.dart';
import 'package:ptc_test2/views/widgets/categories/categories_grid_view.dart';
import 'package:ptc_test2/views/widgets/categories/categories_sliver_app_bar.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  bool displayState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CategoriesSliverAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.view_list),
                  onPressed: () {
                    setState(() {
                      displayState = !displayState;
                    });
                  },
                ),
              ),
            ),
          ),
          displayState == false
              ? const SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: AppSize.s27),
                  sliver: CategoriesGridView())
              : const SliverFillRemaining(
                  child: CategoriesButtomBar(),
                )
        ],
      ),
    );
  }
}
