import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart'; // این را اضافه کنید

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CShop>(
      builder: (context, coffee, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(
              25.0,
            ),
            child: Column(
              children: <Widget>[
                // heading message
                const Text(
                  'How would you like your coffee',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // list of coffee to buy
                Expanded(
                  child: ListView.builder(
                    itemCount: coffee.coffeeShop.length,
                    itemBuilder: (BuildContext context, int index) {
                      // get individual coffee
                      Coffee eachCoffee = coffee.coffeeShop[index];

                      // return the tile for this coffee
                      return ListTile(
                        title: Text(
                          eachCoffee.name,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
