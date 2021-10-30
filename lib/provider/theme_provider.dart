import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.light;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black87,
    primaryColor: Colors.black87,
    primaryTextTheme: Typography().white,
    textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white70)),
    // textTheme: Typography().white,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryTextTheme: Typography().black,
    // textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black87)),
    // textTheme: Typography().white,
    // textTheme: Typography().black,
  );
}
