


import 'package:flutter/material.dart';
import 'package:flutterbook/models/modelssushi.dart';
class Foodsushi extends ChangeNotifier{
  final List<Food> _foodMenu = [
    Food(
      name: "Infinix INFINIX ",
      price: 359.00,
      rating:"22",
      image: "assets/sushi (4).png",
    ),
       Food(
      name: "Infinix INFINIX ",
      price: 359.00,
      rating:"22",
      image: "assets/sushi (5).png",
    ),
       Food(
      name: "Infinix INFINIX ",
      price: 359.00,
      rating:"22",
      image: "assets/sushi (4).png",
    ),
    // Add more Food objects as needed
  ];

  List<Food> get foodMenu => _foodMenu;
  
  List<Food> _cart=[];

  List<Food> get cart=>_cart;

  void addtocart(Food item){
    _cart.add(item);
    notifyListeners();
  }

  void removetocart(Food item){
    _cart.remove(item);
        notifyListeners();

  }
}
