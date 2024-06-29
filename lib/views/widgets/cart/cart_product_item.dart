import 'package:flutter/material.dart';
import 'package:ptc_test2/core/data/static/cart_data.dart';
import 'package:ptc_test2/models/product_model.dart';

class CartProductItem extends StatefulWidget {
  const CartProductItem({
    super.key,
    required this.item,
  });
  final ProductModel item;

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        widget.item.photo,
        width: 60,
      ),
      title: Text(widget.item.name),
      subtitle: Text('\$${widget.item.price}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (count > 0) {
                  count--;
                  widget.item.price / 2;
                } else {
                  setState(() {
                    cartData.removeWhere(
                      (element) => element.name == widget.item.name,
                    );
                  });
                }
              });
            },
          ),
          Text('$count'),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
                widget.item.price * 2;
              });
            },
          ),
        ],
      ),
    );
  }
}
