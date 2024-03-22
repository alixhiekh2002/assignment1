import 'package:checking/modules/food.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodmenu = [
    Food(
      name: "Biryani",
      price: "Rs: 450",
      imgPath: "lib/images/gg.png",
      rating: "4.9",
    ),
    Food(
      name: "Qorma",
      price: "Rs: 750",
      imgPath: "lib/images/qooorma.png",
      rating: "4.7",
    ),
  ];
  //customer cart
  List<Food> _cart = [];

  //getter

  List<Food> get foodmenu => _foodmenu;
  List<Food> get cart => _cart;

  //addToCArt
  void addToCart(Food foodItems, int quantity) {
    for (int i = 0; i <= quantity; i++) {
      _cart.add(foodItems);
    }
    notifyListeners();
  }

  //remove from Cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
