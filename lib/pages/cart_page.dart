import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/coffee_tile.dart';
import 'package:flutter_application_1/models/coffee.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  removeFromCart(Coffee coffee) {
    Provider.of<CShop>(context, listen: false).removeItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CShop>(
      builder: (BuildContext context, CShop coffee, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            25.0,
          ),
          child: Column(
            children: [
              // heading
              const Text(
                'Your cart',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              // list of cart itemss
              Expanded(
                child: ListView.builder(
                  itemCount: coffee.userCart.length,
                  itemBuilder: (BuildContext context, int index) {
                    // get individual cart item
                    Coffee eachCoffee = coffee.userCart[index];
                    // return coffee tile
                    return CoffeeTaile(
                      coffee: eachCoffee,
                      onPressed: removeFromCart(
                        eachCoffee,
                      ),
                      icon: const Icon(
                        Icons.delete,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
