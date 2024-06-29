import 'package:ptc_test2/core/constants/app_image.dart';
import 'package:ptc_test2/models/order_model.dart';

List<OrderModel> ordersData = [
  OrderModel(
      image: AppImage.orange,
      title: 'orange',
      price: 7.5,
      id: 2543235,
      isSuccess: false),
  OrderModel(
    image: AppImage.apple,
    title: 'apple',
    price: 8,
    id: 2543245,
    isSuccess: true,
    deliveryDate: DateTime(2024, 1, 1),
  ),
];
