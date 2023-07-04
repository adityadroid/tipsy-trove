import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tipsy_trove/bootstrap/injection_container.dart';
import 'package:tipsy_trove/l10n/l10n.dart';
import 'package:types/types.dart';

import '../mocks/mocks.dart';

export 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    //setup repos for widget tests
    late DrinksRepository repo;
    repo = MockDrinksRepository();
    registerFallbackValue(DrinkType.ordinary);
    when(() => repo.getDrinksByType(any()))
        .thenAnswer((_) => Future.value(<Drink>[]));

    return pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: InjectionContainer(
          drinksRepository: repo,
          child: widget,
        ),
      ),
    );
  }
}
