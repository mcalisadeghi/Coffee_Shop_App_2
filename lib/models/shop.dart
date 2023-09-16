import 'package:flutter_application_1/models/coffee.dart';

class CShop {
  // coffee for sle list
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black',
      price: '4',
      imagePath: 'assets/images/ice-coffee.png',
    ),
    Coffee(
      name: 'Latte',
      price: '4',
      imagePath: 'assets/images/coffee.png',
    ),
    Coffee(
      name: 'Espresso',
      price: '4',
      imagePath: 'assets/images/coffee-bag.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: '4',
      imagePath: 'assets/images/coffee-cup.png',
    ),
  ];

  // user cart
  final List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;
  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
  }

  // remove item from cart
  void removeItemToCart(Coffee coffee) {
    _userCart.remove(coffee);
  }
}
