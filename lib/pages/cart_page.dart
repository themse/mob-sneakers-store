import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/components/cart_item.dart';
import 'package:store_app/models/cart.dart';
import 'package:store_app/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getUserCart()[index];

                          return CartItem(
                            shoe: shoe,
                            onDelete: () => value.removeItemFromCart(shoe),
                          );
                        }))
              ],
            ));
  }
}
