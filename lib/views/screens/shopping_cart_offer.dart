import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/views/screens/checkout_screen.dart';
import 'package:ptc_test2/views/widgets/cart/cart_products.dart';
import 'package:ptc_test2/views/widgets/cart/cart_sliver_app_bar.dart';
import 'package:ptc_test2/views/widgets/cart/salary_price.dart';

class ShoppingCartOffer extends StatelessWidget {
  const ShoppingCartOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const CartSliverAppBar(),
          ];
        },
        body: Column(
          children: [
            const Expanded(
              child: CartProduct(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
              child: SalaryPrice(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
