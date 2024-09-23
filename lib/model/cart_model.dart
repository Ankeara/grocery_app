import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Chese", "4.00", 'images/chese.jpg', Colors.orange],
    ["Cooking", "12.80", 'images/cook.jpg', Colors.yellow],
    ["Chese Stack", "4.00", 'images/chese2.jpg', Colors.orange],
    ["Sneak Chips", "1.00", 'images/sneak.jpg', Colors.blue],
    ["Sugar Flour", "1.00", 'images/sugar.jpg', Colors.white70],
  ];

  final List _cartItems = [];

  List get shopItems => _shopItems;
  List get cartItems => _cartItems;

  // Add to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // Remove from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
