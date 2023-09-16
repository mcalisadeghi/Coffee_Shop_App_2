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
  //remove item from cart
  removeFromCart(Coffee coffee) {
    Provider.of<CShop>(context, listen: false).removeItemToCart(coffee);
  }

  // pay button
  payNew() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CShop>(
      builder: (BuildContext context, CShop valuee, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            25.0,
          ),
          child: Column(
            children: <Widget>[
              // heading
              const Text(
                'Your cart',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              // list of cart itemss
              // if (valuee.userCart.isNotEmpty) ...[
              Expanded(
                child: ListView.builder(
                  itemCount: valuee.userCart.length,
                  itemBuilder: (BuildContext context, int index) {
                    // get individual cart item
                    Coffee eachCoffee = valuee.userCart[index];
                    // return coffee tile
                    return CoffeeTaile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(
                        eachCoffee,
                      ),
                      icon: const Icon(
                        Icons.delete,
                      ),
                    );
                  },
                ),
              ),
              // ] else ...[
              //   const Text(
              //     'your cart is empy',
              //   ),
              // ],
              GestureDetector(
                onTap: payNew,
                child: Container(
                  padding: const EdgeInsets.all(
                    25,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: const Text(
                    'pay now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
