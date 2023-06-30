import 'package:flutter/material.dart';
import 'package:tipsy_trove/home/view/bottom_widget.dart';
import 'package:tipsy_trove/home/view/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SearchWidget(),
          BottomWidget(),
        ],
      ),
    );
  }
}
