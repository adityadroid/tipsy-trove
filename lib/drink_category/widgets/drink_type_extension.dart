import 'package:flutter/material.dart';
import 'package:tipsy_trove/l10n/l10n.dart';
import 'package:types/types.dart';
export 'package:types/types.dart';
extension TitleExtension on DrinkType {

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
