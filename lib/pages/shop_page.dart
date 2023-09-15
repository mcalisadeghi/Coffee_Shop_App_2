import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            // heading message
            const Text(
              'How would uou like you coffee',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //list of coffee to buy
            Expanded(child: ListView.builder(itemBuilder: (context, index) {}))
          ],
        ),
      ),
    );
  }
}
