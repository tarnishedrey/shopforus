import 'package:flutter/material.dart';
import '../models/item.dart';

class ShoppingCart extends StatelessWidget {
  final List<Item> cart;

  const ShoppingCart({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final item = cart[index];
          return ListTile(
            leading: Image.network(
              item.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(item.name),
            subtitle: Text('Price: \$${item.price}'),
          );
        },
      ),
    );
  }
}
