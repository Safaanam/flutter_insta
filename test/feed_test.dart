import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_insta/main.dart';


void main(){
  group('Home screen Widget Tests', () {
    testWidgets('Testing IconButtons', (tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byIcon(Icons.favorite_border), findsWidgets);
    });
    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.byType(ListView), findsWidgets);
    });
    testWidgets('Testing Scrolling', (tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text('SocialMedia'), findsWidgets);
    });
  });
}