import 'package:drinks_api/src/drink.dart';
import 'package:types/types.dart';

/// {@template drinks_api}
/// API layer to fetch drinks
/// {@endtemplate}
abstract class DrinksApi {
  /// {@macro drinks_api}
  const DrinksApi();

  /// Returns a list of [Drink] based on type
  Future<List<Drink>> getDrinksByType(DrinkType drinkType);
}
