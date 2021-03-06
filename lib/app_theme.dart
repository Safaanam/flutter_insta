import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xFFEDF0F6),
      primaryColor: Colors.blue[500],
      canvasColor: Colors.transparent,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
          color: Colors.blue[500],
          iconTheme: IconThemeData(color: Colors.white)),
      iconTheme: IconThemeData(color: Colors.blue[400]),
      textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
            fontSize: 25.0,
          ),
          bodyText2: TextStyle(color: Colors.grey[800]),
          headline4: TextStyle(color: Colors.grey[900])),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.white),
      unselectedWidgetColor: Colors.blue[400],
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent, textTheme: ButtonTextTheme.primary));

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey[700],
      accentColor: Colors.black45,
      canvasColor: Colors.transparent,
      primaryColor: Colors.teal,
      toggleableActiveColor: Colors.grey[300],
      appBarTheme: AppBarTheme(
          color: Colors.grey[900],
          iconTheme: IconThemeData(color: Colors.grey[100])),
      iconTheme: IconThemeData(color: Colors.grey[300]),
      textTheme: TextTheme(
          bodyText1: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[50],
            fontSize: 25.0,
          ),
          bodyText2: TextStyle(color: Colors.grey[100],
              fontSize: 15.0),
          headline4: TextStyle(color: Colors.grey[50])),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.grey[800]),
      unselectedWidgetColor: Colors.grey[300],
      dividerColor: Colors.grey[500],
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.grey[900], textTheme: ButtonTextTheme.primary));
}

class ThemeNotifier extends ChangeNotifier{
  final String key = "theme";
  //SharedPreferences prefs;
  bool _isDarkTheme;

  bool get isDarkTheme => _isDarkTheme;

  ThemeNotifier(){
    _isDarkTheme = false;
  }

  toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

}