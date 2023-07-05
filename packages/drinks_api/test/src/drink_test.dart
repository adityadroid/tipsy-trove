import 'package:drinks_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('Drink', () {
    test('can be constructed', () {
      const drink = Drink(
        strDrink: 'Coffee',
        strDrinkThumb: 'coffee.jpg',
        idDrink: '123',
      );

      expect(drink.strDrink, 'Coffee');
      expect(drink.strDrinkThumb, 'coffee.jpg');
      expect(drink.idDrink, '123');
    });

    test('can be created from JSON', () {
      final json = {
        'strDrink': 'Coffee',
        'strDrinkThumb': 'coffee.jpg',
        'idDrink': '123',
      };

      final drink = Drink.fromJson(json);

      expect(drink.strDrink, 'Coffee');
      expect(drink.strDrinkThumb, 'coffee.jpg');
      expect(drink.idDrink, '123');
    });
  });
}
