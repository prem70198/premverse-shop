import 'package:flutter/material.dart';
import 'package:minimal_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Minimalist Sunglasses",
      price: 89.99,
      description: "Sleek UV-protected shades with a lightweight minimalist frame for timeless everyday style.",
      imagePath: "lib/images/sunglass.png",
    ),
    // product 2
    Product(
      name: "Cozy Cotton Hoodie",
      price: 119.99,
      description: "Ultra-soft cotton blend fleece designed for supreme warmth, comfort, and relaxed fit.",
      imagePath: "lib/images/hoodie.png",
    ),
    // product 3
    Product(
      name: "Air Jordan Retro",
      price: 189.99,
      description: "Iconic high-top sneakers delivering premium leather comfort and signature athletic style.",
      imagePath: "lib/images/airJordan.png",
    ),
    // product 4
    Product(
      name: "Canvas High-Tops",
      price: 69.99,
      description: "Classic vintage canvas sneakers engineered for all-day wear and effortless versatility.",
      imagePath: "lib/images/converse.png",
    ),
  ];

  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
