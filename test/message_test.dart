import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/message_screen.dart';
import 'package:flutter_test/flutter_test.dart';

class CreateMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing image screen',
      home: MessageScreen(),
    );
  }
}

void main() {

  group('message screen testing: ',() {
    testWidgets('textfield testing', (WidgetTester tester) async {
      await tester.pumpWidget(CreateMessageScreen());
      var textField = find.byType(TextField);
      expect(textField, findsWidgets);
    });
    testWidgets('button testing', (WidgetTester tester) async {
      await tester.pumpWidget(CreateMessageScreen());
      expect(find.byType(RaisedButton),findsOneWidget);
    });
    testWidgets('Icon testing', (WidgetTester tester) async {
      await tester.pumpWidget(CreateMessageScreen());
      expect(find.byIcon(Icons.arrow_back),findsOneWidget);
    });
  });

}


