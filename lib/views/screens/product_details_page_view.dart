import 'package:flutter/material.dart';
import 'package:ptc_test2/models/product_model.dart';
import 'package:ptc_test2/views/screens/product_details_screen.dart';
import 'package:ptc_test2/views/screens/product_details_three_screen.dart';
import 'package:ptc_test2/views/screens/product_details_two_screen.dart';

class ProductDetailsPageView extends StatelessWidget {
  const ProductDetailsPageView(
      {super.key, required this.index, required this.product});

  final int index;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      children: [
        ProductDetailsScreen(
          index: index,
          product: product,
        ),
        ProductDetailsTwoScreen(
          index: index,
          product: product,
        ),
        ProductDetailsThreeScreen(
          index: index,
          product: product,
        ),
      ],
    );
  }
}
