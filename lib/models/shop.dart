import 'package:flutter/material.dart';
import 'package:flutterbook/models/products.dart';

class Shop extends ChangeNotifier{
  final List<Product> _shop=[
    Product (
      name:"Infinix INFINIX SMART 8 4GO 128GO – NOIR",
      price: 359.00,
      description: "Restez jusqu'au boutLa stratégie exclusive du marathon de puissance vous permet de ne pas vous inquiéter. Même si la puissance de votre batterie est à 5 %",
    image: "assets/ps4_console_blue_1.png"
    ),
      Product (
      name:"Infinix INFINIX SMART 8 4GO 128GO – NOIR",
      price: 359.00,
      description: "Restez jusqu'au boutLa stratégie exclusive du marathon de puissance vous permet de ne pas vous inquiéter. Même si la puissance de votre batterie est à 5 %",
    image: "assets/ps4_console_blue_1.png"

    ),
      Product (
      name:"Infinix INFINIX SMART 8 4GO 128GO – NOIR",
      price: 359.00,
      description: "Restez jusqu'au boutLa stratégie exclusive du marathon de puissance vous permet de ne pas vous inquiéter. Même si la puissance de votre batterie est à 5 %",
    image: "assets/ps4_console_blue_1.png"

    ),
      Product (
      name:"Infinix INFINIX SMART 8 4GO 128GO – NOIR",
      price: 359.00,
      description: "Restez jusqu'au boutLa stratégie exclusive du marathon de puissance vous permet de ne pas vous inquiéter. Même si la puissance de votre batterie est à 5 %",
    image: "assets/ps4_console_blue_1.png"

    ),
  ];

  List<Product> _cart=[];

  List<Product> get shop=>_shop;

  List<Product> get cart=>_cart;

  void addtocart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  void removetocart(Product item){
    _cart.remove(item);
        notifyListeners();

  }
}

