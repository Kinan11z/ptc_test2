import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/models/product_model.dart';
import 'package:ptc_test2/views/widgets/my_cart.dart';
import 'package:ptc_test2/views/widgets/product/custom_expansion_tile.dart';
import 'package:ptc_test2/views/widgets/product/product_page_view.dart';
import 'package:ptc_test2/views/widgets/product/reverse_button.dart';
import 'package:ptc_test2/views/widgets/product/row_button.dart';
import 'package:ptc_test2/views/widgets/product/row_price_product.dart';
import 'package:ptc_test2/views/widgets/product/row_rating.dart';

class ProductDetailsThreeScreen extends StatelessWidget {
  const ProductDetailsThreeScreen(
      {super.key, required this.index, required this.product});

  final int index;
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSize.s10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReverseButton(),
                  Container(
                    width: 241,
                    height: 241,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.activeIndicatorColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProductPageView(
                          index: index,
                        ),
                      ],
                    ),
                  ),
                  const MyCart()
                ],
              ),
              const SizedBox(height: AppSize.s25),
              Padding(
                padding: EdgeInsets.only(right: width / 3),
                child: Text(
                  product.name,
                  style: AppStyles.styleSemiBold20(context)
                      .copyWith(color: AppColors.black),
                ),
              ),
              const SizedBox(height: AppSize.s12),
              RowPriceProduct(price: product.price),
              const SizedBox(height: AppSize.s27),
              const RowRating(),
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
