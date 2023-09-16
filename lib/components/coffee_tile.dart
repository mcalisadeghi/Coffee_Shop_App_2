import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee.dart';

class CoffeeTaile extends StatelessWidget {
  final Coffee coffee;
  const CoffeeTaile({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        coffee.name,
      ),
      subtitle: Text(
        coffee.price,
      ),
      leading: Image.asset(
        coffee.imagePath,
      ),
    );
  }
}
