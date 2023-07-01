import 'package:drinks_api/drinks_api.dart';
import 'package:types/types.dart';

/// {@template drinks_repository}
/// Repository to fetch drinks
/// {@endtemplate}
class DrinksRepository {
  /// {@macro drinks_repository}
  const DrinksRepository({required DrinksApi api}) : _api = api;

  final DrinksApi _api;

  /// get drinks by [DrinkType]
  Future<List<Drink>> getDrinksByType(DrinkType drinkType) =>
      _api.getDrinksByType(drinkType);
}
