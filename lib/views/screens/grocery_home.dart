import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/fruit_tea_data.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/deals_on_item.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/discount_list_view.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/grocery_sliver_appbar.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/recommended_list_view.dart';
import 'package:ptc_test2/views/widgets/grocery_screen/usage_information-list_view.dart';

class GroceryHome extends StatelessWidget {
  const GroceryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const GrocerySliverAppbar(),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: AppSize.s27),
              child: SizedBox(height: 123, child: DiscountListView()),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: AppSize.s20, bottom: AppSize.s18),
              child: Text(
                'Recommended',
                style: AppStyles.styleRegular30(context),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: AppSize.s20),
              child: SizedBox(height: 194, child: RecommendedListView()),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: AppSize.s27),
              child: SizedBox(height: 123, child: UsageInformationListView()),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: AppSize.s20, bottom: AppSize.s18),
              child: Text(
                'Deals on Fruits & Tea',
                style: AppStyles.styleBold30(context)
                    .copyWith(color: AppColors.blackTextColor),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
            sliver: SliverGrid.builder(
              itemCount: fruitTeaData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.86,
                  crossAxisSpacing: AppPadding.p12,
                  mainAxisSpacing: AppPadding.p16),
              itemBuilder: (context, index) {
                return DealsOnFruitAndTeaItem(
                    listData: fruitTeaData, index: index);
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: AppSize.s50),
          )
        ],
      ),
    );
  }
}
