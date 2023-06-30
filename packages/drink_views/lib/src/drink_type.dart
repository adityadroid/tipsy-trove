import 'package:flutter/material.dart';
import 'package:drink_views/l10n/l10n.dart';

enum DrinkType {
  alcoholic,
  nonAlcoholic,
  ordinary,
  cocktail,
}

extension DrinkTypeExtension on DrinkType {
  String get key {
    switch (this) {
      case DrinkType.alcoholic:
        return 'Alcoholic';
      case DrinkType.nonAlcoholic:
        return 'Non_Alcoholic';
      case DrinkType.ordinary:
        return 'Ordinary_Drink';
      case DrinkType.cocktail:
        return 'Cocktail';
    }
  }

  String title(BuildContext context) {
    switch (this) {
      case DrinkType.alcoholic:
        return context.l10n.alcoholicLabel;
      case DrinkType.nonAlcoholic:
        return context.l10n.nonAlcoholicLabel;
      case DrinkType.ordinary:
        return context.l10n.ordinaryDrinksLabel;
      case DrinkType.cocktail:
        return context.l10n.cocktailsLabel;
    }
  }
}
