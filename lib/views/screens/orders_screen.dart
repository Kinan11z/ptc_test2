import 'package:flutter/material.dart';
import 'package:ptc_test2/views/widgets/orders/orders_app_bar.dart';
import 'package:ptc_test2/views/widgets/orders/orders_list.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrdersAppBar(),
      body: OrdersList(),
    );
  }
}
