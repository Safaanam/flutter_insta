import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/image_screen.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:test/test.dart';
import 'package:flutter_insta/main.dart';

class CreateImageScreen extends StatefulWidget {

  @override
  _CreateImageScreenState createState() => _CreateImageScreenState();
}

class _CreateImageScreenState extends State<CreateImageScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing image screen',
      home: ImageScreen(),
    );
  }
}

void main() {

  group('image screen testing: ', ()
  {
    //var imageVar = ImageScreen();

    testWidgets('Back button', (tester) async {
      await tester.pumpWidget(CreateImageScreen());
      expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    });

    testWidgets('Raised Buttons', (WidgetTester tester) async {
      //await tester.tap(find.byType(RaisedButton));
      await tester.pumpWidget(CreateImageScreen());
      expect(find.byType(RaisedButton), findsWidgets);
      expect(find.text('Click'), findsOneWidget);
      expect(find.text('Pick from Gallery'), findsOneWidget);
    });

    testWidgets('media fetching container', (WidgetTester tester) async {
      await tester.pumpWidget(CreateImageScreen());
      expect(find.widgetWithText(Container, '     Your image will appear here'), findsOneWidget);
    });

  });

}
