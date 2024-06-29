import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/data/static/fishes_data.dart';
import 'package:ptc_test2/views/widgets/onboarding_screen/indicator_page_view.dart';
import 'package:ptc_test2/views/widgets/product/item_product_page_view.dart';

class ProductPageView extends StatefulWidget {
  const ProductPageView({
    super.key,
    required this.index,
  });

  final int index;
  @override
  State<ProductPageView> createState() => _ProductPageViewState(
        index: index,
      );
}

class _ProductPageViewState extends State<ProductPageView> {
  _ProductPageViewState({
    required this.index,
  });
  int index;

  late PageController pageController;
  int currentPageView = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentPageView = pageController.page!.round();
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemProductPageView(
          index: index,
          pageController: pageController,
        ),
        Align(
          alignment: Alignment.center,
          child: IndicatorPageView(
              itemCount: fishesData[index].images.length,
              activeWidth: 19,
              inActiveWidth: 17,
              inActiveColor: AppColors.productIndicatorColor,
              activeColor: AppColors.orangeContainerColor,
              currentPageView: currentPageView),
        ),
      ],
    );
  }
}
