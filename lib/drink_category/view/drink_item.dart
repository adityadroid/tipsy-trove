import 'package:flutter/material.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({required this.image, required this.title, super.key});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
