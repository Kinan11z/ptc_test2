import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/models/product_model.dart';
import 'package:ptc_test2/views/widgets/product/custom_expansion_tile.dart';
import 'package:ptc_test2/views/widgets/product/product_details_app_bar.dart';
import 'package:ptc_test2/views/widgets/product/product_page_view.dart';
import 'package:ptc_test2/views/widgets/product/row_button.dart';
import 'package:ptc_test2/views/widgets/product/row_price_product.dart';
import 'package:ptc_test2/views/widgets/product/row_rating.dart';

class ProductDetailsTwoScreen extends StatelessWidget {
  const ProductDetailsTwoScreen(
      {super.key, required this.index, required this.product});

  final int index;
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProductDetailsAppBar(title: ''),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: AppStyles.styleRegular50(context)
                    .copyWith(color: AppColors.black),
              ),
              const RowRating(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: ProductPageView(
                      index: index,
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 126,
                    decoration: BoxDecoration(
                      color: AppColors.activeIndicatorColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: AppSize.s46),
              RowPriceProduct(price: product.price),
              const SizedBox(height: AppSize.s30),
              const RowButton(),
              const SizedBox(height: AppSize.s30),
              Text(
                'Details',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: AppColors.buttonBackgroundColor),
              ),
              Text(
                product.details,
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: AppColors.hintTextColor),
              ),
              const SizedBox(height: AppSize.s30),
              const CustomExpansionTile(
                title: 'Nutritional facts',
              ),
              const Divider(
                color: AppColors.greyTextColor,
              ),
              const CustomExpansionTile(
                title: 'Reviews',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
