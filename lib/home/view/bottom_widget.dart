import 'package:flutter/material.dart';
import 'package:tipsy_trove/drink_category/drink_category.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TabBarView(
        children: DrinkType.values
            .map(
              (drinkType) => DrinksListWidget(
                drinkType: drinkType,
              ),
            )
            .toList(),
      ),
    );
  }
}
