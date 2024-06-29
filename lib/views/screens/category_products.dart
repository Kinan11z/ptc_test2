import 'package:flutter/material.dart';
import 'package:ptc_test2/views/widgets/categories/category_products_app_bar.dart';
import 'package:ptc_test2/views/widgets/categories/products_button_bar.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryProductsAppBar(title: title),
      body: const ProductsButtonBar(),
    );
  }
}
