import 'package:flutter/material.dart';
import 'package:tipsy_trove/home/view/bottom_widget.dart';
import 'package:tipsy_trove/home/view/search_widget.dart';
import 'package:tipsy_trove/utils/drink_title_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: DrinkType.values.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, bool isInnerBoxScrolled) => <Widget>[
            const SearchWidget(),
          ],
          body: const BottomWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.auto_awesome),
        label: const Text('Mix it up!'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
