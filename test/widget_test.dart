// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgetassignment/main.dart';
import 'package:widgetassignment/splash_screen.dart';

void main() {
  testWidgets('App should display the splash screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MechTechApp());

    expect(find.byType(SplashScreen), findsOneWidget);
  });

  testWidgets('App should have a title', (WidgetTester tester) async {
    await tester.pumpWidget(const MechTechApp());

    expect(find.text('MechTech Project'), findsOneWidget);
  });
}
