import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/coffee_tile.dart';
import 'package:flutter_application_1/models/coffee.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart'; // این را اضافه کنید

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  addToCart(Coffee coffe) {
    Provider.of<CShop>(context, listen: false).addItemToCart(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CShop>(
      builder: (BuildContext context, CShop coffee, child) => SafeArea(
        child: Builder(
          builder: (BuildContext context) {
            return Padding(
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
                        return CoffeeTaile(
                          coffee: eachCoffee,
                          onPressed: addToCart(
                            eachCoffee,
                          ),
                          icon: const Icon(
                            Icons.add,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
