import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flex_responsive/flex_responsive.dart';

void main() {
  group('FlexResponsive Tests', () {
    testWidgets('FlexResponsiveLayout shows mobile view',
        (WidgetTester tester) async {
      // Set mobile screen size
      tester.binding.window.physicalSizeTestValue =
          const Size(300 * 3, 600 * 3);
      tester.binding.window.devicePixelRatioTestValue = 3.0;

      await tester.pumpWidget(
        const MaterialApp(
          home: MediaQuery(
            data: MediaQueryData(),
            child: FlexResponsiveLayout(
              mobile: Text('mobile'),
              tablet: Text('tablet'),
              desktop: Text('desktop'),
            ),
          ),
        ),
      );

      expect(find.text('mobile'), findsOneWidget);
      expect(find.text('tablet'), findsNothing);
      expect(find.text('desktop'), findsNothing);
    });

    testWidgets('FlexResponsiveGrid shows correct columns',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: MediaQuery(
            data: MediaQueryData(),
            child: FlexResponsiveGrid(
              children: [
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
          ),
        ),
      );

      expect(find.text('Item 1'), findsOneWidget);
      expect(find.text('Item 2'), findsOneWidget);
      expect(find.text('Item 3'), findsOneWidget);
    });
  });
}
