import 'package:dio/dio.dart';
import 'package:drinks_rest_api/drinks_rest_api.dart';
import 'package:drinks_rest_api/src/drink_type_extension.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('DrinksRestApi', () {
    late DrinksRestApi drinksRestApi;
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      drinksRestApi = DrinksRestApi(dio: mockDio);
    });

    test('getDrinksByType returns list of drinks', () async {
      const drinkType = DrinkType.ordinary;
      final path = '/filter.php?${drinkType.restFilterName}=${drinkType.key}';
      final response = Response(
        data: {
          'drinks': [
            {
              'strDrink': 'Coffee',
              'strDrinkThumb': 'coffee.jpg',
              'idDrink': '123',
            },
            {
              'strDrink': 'Tea',
              'strDrinkThumb': 'tea.jpg',
              'idDrink': '456',
            },
          ],
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: path),
      );

      when(() => mockDio.get(path)).thenAnswer((_) async => response);

      final drinks = await drinksRestApi.getDrinksByType(drinkType);

      expect(drinks.length, 2);

      expect(drinks[0].strDrink, 'Coffee');
      expect(drinks[0].strDrinkThumb, 'coffee.jpg');
      expect(drinks[0].idDrink, '123');

      expect(drinks[1].strDrink, 'Tea');
      expect(drinks[1].strDrinkThumb, 'tea.jpg');
      expect(drinks[1].idDrink, '456');
    });
  });
}
