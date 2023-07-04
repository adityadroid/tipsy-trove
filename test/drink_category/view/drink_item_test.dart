import 'package:flutter/material.dart';
import 'package:tipsy_trove/drink_category/view/drink_item.dart';

import '../../helpers/helpers.dart';

void main() {
  testWidgets('DrinkItem widget should display image and title',
      (WidgetTester tester) async {
    const testImage = 'https://example.com/example.jpg';
    const testTitle = 'Test Drink';
    await tester.pumpApp(
      const DrinkItem(image: testImage, title: testTitle),
    );
    // Verify that the image is displayed
    expect(
      find.byWidgetPredicate(
        (widget) => widget is Image && widget.image is NetworkImage,
      ),
      findsOneWidget,
    );

    // Verify that the title is displayed
    expect(find.text(testTitle), findsOneWidget);
  });
}
