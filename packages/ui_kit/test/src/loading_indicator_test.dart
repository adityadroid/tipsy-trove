import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  testWidgets('LoadingIndicator displays circular progress indicator',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: LoadingIndicator(),
        ),
      ),
    );

    // Find the circular progress indicator
    final indicatorFinder = find.byType(CircularProgressIndicator);

    // Verify that the indicator is displayed
    expect(indicatorFinder, findsOneWidget);
  });
}
