import 'package:tipsy_trove/app/app.dart';
import 'package:tipsy_trove/home/view/home_page.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpApp(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
