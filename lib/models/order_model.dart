class OrderModel {
  String image;
  String title;
  double price;
  int id;
  bool isSuccess;
  DateTime? deliveryDate;
  OrderModel({
    required this.image,
    required this.title,
    required this.price,
    required this.id,
    required this.isSuccess,
    this.deliveryDate,
  });
}
