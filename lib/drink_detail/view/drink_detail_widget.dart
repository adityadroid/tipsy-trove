import 'package:drinks_api/drinks_api.dart';
import 'package:flutter/material.dart';
import 'package:tipsy_trove/utils/context_extensions.dart';

class DrinkDetailWidget extends StatefulWidget {
  const DrinkDetailWidget({required this.detail, super.key});

  final DrinkDetail detail;

  @override
  State<DrinkDetailWidget> createState() => _DrinkDetailWidgetState();
}

class _DrinkDetailWidgetState extends State<DrinkDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(widget.detail.thumbnailUrl ?? ''),
        Card(
          child: Column(
            children: [
              Text(
                widget.detail.drinkName ?? '',
                style: context.textTheme.titleMedium,
              ),
              Text(widget.detail.ingredient1 ?? ''),
            ],
          ),
        )
      ],
    );
  }
}
