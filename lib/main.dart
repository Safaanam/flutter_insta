import 'package:flutter/material.dart';
import 'package:flutter_insta/app_theme.dart';
import 'package:flutter_insta/screens/feed.dart';
import 'package:flutter_insta/screens/image_screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            title: 'Flutter Social Media',
            debugShowCheckedModeBanner: false,
            theme: notifier.isDarkTheme ? AppTheme.darkTheme : AppTheme.lightTheme,
            routes: {
              FeedScreen.routeName: (context) => FeedScreen(),
              ImageScreen.routeName: (context) => ImageScreen(),
            },
            initialRoute: FeedScreen.routeName,

          );
        }

      ),
    );
  }
}
