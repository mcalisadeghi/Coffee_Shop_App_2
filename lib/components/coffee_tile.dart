import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/coffee.dart';

class CoffeeTaile extends StatelessWidget {
  final Coffee coffee;
  final void Function()? onPressed;
  final Widget icon;
  const CoffeeTaile({
    super.key,
    required this.coffee,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(
          121,
        ),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 25,
      ),
      child: ListTile(
        title: Text(
          coffee.name,
        ),
        subtitle: Text(
          coffee.price,
        ),
        leading: Image.asset(
          coffee.imagePath,
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
        onTap: onPressed,
      ),
    );
  }
}
