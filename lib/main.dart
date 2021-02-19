import 'package:flutter/material.dart';
import 'package:flutter_insta/screens/feed.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Media',
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}
