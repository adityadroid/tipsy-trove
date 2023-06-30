import 'package:drink_views/drink_views.dart';
import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: DefaultTabController(
        length: DrinkType.values.length,
        child: Column(
          children: [
            TabBar(
              tabs: DrinkType.values
                  .map((drinkType) => Tab(
                        text: drinkType.title(context),
                      ))
                  .toList(),
            ),
            Expanded(
              child: TabBarView(
                children: DrinkType.values
                    .map((drinkType) => DrinksListWidget(
                          drinkType: drinkType,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
