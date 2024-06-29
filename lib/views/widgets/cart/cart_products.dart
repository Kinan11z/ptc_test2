import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_colors.dart';
import 'package:ptc_test2/core/constants/app_styles.dart';
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/views/widgets/cart/cart_product_item.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({super.key});

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    int remainingItemCount = cartData.length - 3;

    return ListView(
      children: [
        ...cartData.take(3).map(
              (item) => CartProductItem(
                item: item,
              ),
            ),
        if (remainingItemCount > 0)
          _expanded == false
              ? ListTile(
                  trailing: TextButton(
                    child: Text(
                      "Edit",
                      style: AppStyles.styleMedium12(context)
                          .copyWith(color: AppColors.primaryColor),
                    ),
                    onPressed: () {},
                  ),
                  leading: TextButton(
                    child: Text(
                      "+ $remainingItemCount More",
                      style: AppStyles.styleMedium12(context)
                          .copyWith(color: AppColors.primaryColor),
                    ),
                    onPressed: () {
                      setState(() {
                        _expanded = !_expanded;
                      });
                    },
                  ),
                )
              : Container(),
        if (_expanded)
          ...cartData.skip(3).map(
                (item) => CartProductItem(
                  item: item,
                ),
              ),
      ],
    );
  }
}
