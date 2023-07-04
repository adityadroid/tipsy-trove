import 'package:drinks_api/drinks_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tipsy_trove/drink_category/bloc/drink_category_bloc.dart';
import 'package:tipsy_trove/drink_category/view/drink_item.dart';
import 'package:tipsy_trove/drink_category/view/view.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../helpers/helpers.dart';
import '../../mocks/mocks.dart';

void main() {
  group('DrinksListView', () {
    testWidgets('should display loading indicator when in the loading state',
        (WidgetTester tester) async {
      final drinkCategoryBloc = MockDrinkCategoryBloc();
      when(() => drinkCategoryBloc.stream).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(() => drinkCategoryBloc.state).thenReturn(const Loading());
      await tester.pumpApp(
        BlocProvider<DrinkCategoryBloc>.value(
          value: drinkCategoryBloc,
          child: const CustomScrollView(
            slivers: [DrinksListView()],
          ),
        ),
      );
      expect(find.byType(LoadingIndicator), findsOneWidget);
    });

    testWidgets('should display DrinkItem widgets when in the loaded state',
        (WidgetTester tester) async {
      final drinks = [
        const Drink(strDrinkThumb: 'image1.jpg', strDrink: 'Drink 1'),
        const Drink(strDrinkThumb: 'image2.jpg', strDrink: 'Drink 2'),
      ];
      final drinkCategoryBloc = MockDrinkCategoryBloc();
      when(() => drinkCategoryBloc.stream).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(() => drinkCategoryBloc.state).thenReturn(Loaded(drinks));
      await tester.pumpApp(
        BlocProvider<DrinkCategoryBloc>.value(
          value: drinkCategoryBloc,
          child: const CustomScrollView(
            slivers: [DrinksListView()],
          ),
        ),
      );

      expect(find.byType(DrinkItem), findsNWidgets(drinks.length));
    });

    testWidgets('should display error widget when in the error state',
        (WidgetTester tester) async {
      final drinkCategoryBloc = MockDrinkCategoryBloc();
      when(() => drinkCategoryBloc.stream).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(() => drinkCategoryBloc.state).thenReturn(const Error());
      await tester.pumpApp(
        BlocProvider<DrinkCategoryBloc>.value(
          value: drinkCategoryBloc,
          child: const CustomScrollView(
            slivers: [DrinksListView()],
          ),
        ),
      );
      expect(find.byType(AppErrorWidget), findsOneWidget);
    });
  });
}
