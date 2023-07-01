import 'package:dio/dio.dart';
import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_rest_api/src/drink_type_extension.dart';
import 'package:types/types.dart';

/// {@template drinks_rest_api}
/// Actual REST API layer to fetch drinks
/// {@endtemplate}
class DrinksRestApi implements DrinksApi {
  /// {@macro drinks_rest_api}
  DrinksRestApi({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<Drink>> getDrinksByType(DrinkType type) async {
    //check which filter to use
    final path = '/filter.php?${type.restFilterName}=${type.key}';
    final response = await _dio.get(path);
    final drinks = ((response.data as Map<String, dynamic>)['drinks'] as List)
        .cast<Map<String, dynamic>>()
        .map(Drink.fromJson)
        .toList();
    return drinks;
  }
}
