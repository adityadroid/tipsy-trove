import 'package:bloc_test/bloc_test.dart';
import 'package:drinks_api/drinks_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';
import 'package:tipsy_trove/utils/drink_title_extension.dart';

import '../../helpers/helpers.dart';
import '../../mocks/mocks.dart';

void main() {
  group('DrinkCategoryBloc', () {
    late MockDrinksRepository repo;
    setUpAll(() {
      registerFallbackValue(DrinkType.ordinary);
      repo = MockDrinksRepository();
    });
    test('initial state is .loading() ', () {
      expect(
        DrinkCategoryBloc(drinksRepository: repo).state,
        equals(const DrinkCategoryState.loading()),
      );
    });
    blocTest<DrinkCategoryBloc, DrinkCategoryState>(
      'emits .loaded() with a empty list',
      setUp: () {
        when(() => repo.getDrinksByType(DrinkType.ordinary))
            .thenAnswer((_) => Future.value(<Drink>[]));
      },
      build: () => DrinkCategoryBloc(drinksRepository: repo),
      act: (bloc) => bloc.add(const InitEvent(drinkType: DrinkType.ordinary)),
      expect: () => [
        const DrinkCategoryState.loading(),
        const DrinkCategoryState.loaded([])
      ],
    );

    blocTest<DrinkCategoryBloc, DrinkCategoryState>(
      'emits .loaded() with a list of 3 drinks',
      setUp: () {
        when(() => repo.getDrinksByType(DrinkType.ordinary)).thenAnswer(
          (_) => Future.value([
            const Drink(strDrink: 'drink1'),
            const Drink(strDrink: 'drink2'),
            const Drink(strDrink: 'drink3'),
          ]),
        );
      },
      build: () => DrinkCategoryBloc(drinksRepository: repo),
      act: (bloc) => bloc.add(const InitEvent(drinkType: DrinkType.ordinary)),
      verify: (bloc) =>
          bloc.state is Loaded && (bloc.state as Loaded).drinks.length == 3,
    );
    blocTest<DrinkCategoryBloc, DrinkCategoryState>(
      'emits .error() when Exception is encountered',
      setUp: () {
        when(() => repo.getDrinksByType(DrinkType.ordinary))
            .thenThrow(Exception('Something went wrong!'));
      },
      build: () => DrinkCategoryBloc(drinksRepository: repo),
      act: (bloc) => bloc.add(const InitEvent(drinkType: DrinkType.ordinary)),
      expect: () => [
        const DrinkCategoryState.loading(),
        const DrinkCategoryState.error()
      ],
      errors: () => [isA<Exception>()],
    );
  });
}
