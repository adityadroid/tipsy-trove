import 'package:drinks_api/drinks_api.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tipsy_trove/app/app.dart';
import 'package:tipsy_trove/bootstrap/injection_container.dart';
import 'package:tipsy_trove/home/view/home_page.dart';
import 'package:tipsy_trove/utils/drink_title_extension.dart';

class MockDrinksRepository extends Mock implements DrinksRepository {}

void main() {
  group('App', () {
    late DrinksRepository repo;
    setUpAll(
      () {
        repo = MockDrinksRepository();
        registerFallbackValue(DrinkType.ordinary);

        when(() => repo.getDrinksByType(any()))
            .thenAnswer((_) => Future.value(<Drink>[]));
      },
    );
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(
          InjectionContainer(drinksRepository: repo, child: const App()));
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
