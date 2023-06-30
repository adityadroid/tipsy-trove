import 'package:flutter/material.dart';
import 'package:tipsy_trove/utils/drink_type.dart';

class DrinksListWidget extends StatelessWidget {
  const DrinksListWidget({required this.drinkType, super.key});

  final DrinkType drinkType;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
    );
  }
}
