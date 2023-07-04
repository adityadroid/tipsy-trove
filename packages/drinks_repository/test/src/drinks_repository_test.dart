import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:types/types.dart';

class MockDrinksApi extends Mock implements DrinksApi {}

void main() {
  group('DrinksRepository', () {
    late DrinksRepository drinksRepository;
    late MockDrinksApi mockDrinksApi;

    setUp(() {
      mockDrinksApi = MockDrinksApi();
      drinksRepository = DrinksRepository(api: mockDrinksApi);
    });

    test('getDrinksByType returns list of drinks', () async {
      const drinkType = DrinkType.ordinary;
      const drinks = [
        Drink(
          strDrink: 'Coffee',
          strDrinkThumb: 'coffee.jpg',
          idDrink: '123',
        ),
        Drink(
          strDrink: 'Tea',
          strDrinkThumb: 'tea.jpg',
          idDrink: '456',
        ),
      ];

      when(() => mockDrinksApi.getDrinksByType(drinkType))
          .thenAnswer((_) async => drinks);

      final result = await drinksRepository.getDrinksByType(drinkType);

      expect(result, drinks);
    });
  });
}
