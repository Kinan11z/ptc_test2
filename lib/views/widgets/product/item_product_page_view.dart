import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/fishes_data.dart';

class ItemProductPageView extends StatelessWidget {
  const ItemProductPageView(
      {super.key, required this.pageController, required this.index});

  final PageController pageController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: pageController,
      itemCount: fishesData[index].images.length,
      itemBuilder: (context, imageIndex) => Padding(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p50),
        child: Center(
          child: Image.asset(
            fishesData[index].images[imageIndex],
          ),
        ),
      ),
    );
  }
}
