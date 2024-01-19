import 'package:flutter/material.dart';
import 'package:store_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  final List<Shoe> _shoeShop = const [
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: 'lib/images/jordan.jpg',
      description: 'Cool Shoe',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: 'lib/images/jordan.jpg',
      description: 'Cool Shoe',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: 'lib/images/jordan.jpg',
      description: 'Cool Shoe',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: 'lib/images/jordan.jpg',
      description: 'Cool Shoe',
    ),
  ];

  final List<Shoe> _userCart = [];

  List<Shoe> getShoeList() {
    return _shoeShop;
  }

  List<Shoe> getUserCart() {
    return _userCart;
  }

  void addItemToCart(Shoe shoe) {
    _userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    _userCart.remove(shoe);
    notifyListeners();
  }
}
