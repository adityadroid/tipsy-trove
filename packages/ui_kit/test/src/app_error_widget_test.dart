import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  testWidgets('AppErrorWidget displays error message',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AppErrorWidget(),
        ),
      ),
    );

    // Find the error icon
    final iconFinder = find.byIcon(Icons.error_outline);

    // Verify that the icon is displayed
    expect(iconFinder, findsOneWidget);

    // Verify the icon size
    final iconWidget = tester.widget<Icon>(iconFinder);
    expect(iconWidget.size, 80.0);
  });
}
