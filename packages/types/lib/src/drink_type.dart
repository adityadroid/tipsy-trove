///These are drink types that are supported/shown in the app
enum DrinkType {
  ///alcoholic drink
  alcoholic,
  ///non alcoholic
  nonAlcoholic,
  ///ordinary drink
  ordinary,
  ///cocktail
  cocktail,
}
/// Extension to get the key used for a particular drink type on the backend
extension DrinkTypeExtension on DrinkType {
  ///method to get the actual key
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
}
