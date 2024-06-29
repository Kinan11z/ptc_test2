import 'package:flutter/material.dart';
import 'package:ptc_test2/core/constants/app_values.dart';
import 'package:ptc_test2/core/data/static/orders_data.dart';
import 'package:ptc_test2/models/order_model.dart';
import 'package:ptc_test2/views/widgets/orders/order_current_item.dart';
import 'package:ptc_test2/views/widgets/orders/order_success_item.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Column(
        children: ordersData.map(
          (OrderModel order) {
            if (!order.isSuccess) {
              return OrderCurrentItem(
                id: order.id,
                title: order.title,
                price: order.price,
              );
            } else {
              return OrderSuccessItem(
                id: order.id,
                title: order.title,
                price: order.price,
                time: order.deliveryDate!,
              );
            }
          },
        ).toList(),
      ),
    );
  }
}
