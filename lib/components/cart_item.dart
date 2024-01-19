import 'package:flutter/material.dart';
import 'package:store_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  void Function()? onDelete;

  CartItem({super.key, required this.shoe, required this.onDelete});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text('\$${widget.shoe.price}'),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: const Icon(Icons.delete_outline, color: Colors.white),
            onPressed: widget.onDelete,
          ),
        ),
      ),
    );
  }
}
