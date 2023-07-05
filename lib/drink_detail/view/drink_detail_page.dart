import 'package:flutter/material.dart';

class DrinkDetailPage extends StatelessWidget {
  const DrinkDetailPage({super.key});

  static const routeName = '/drink-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('drink details'),
      ),
    );
  }
}
