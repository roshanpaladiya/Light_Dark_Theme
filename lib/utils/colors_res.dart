import 'package:flutter/material.dart';

class ColorRes with ChangeNotifier {
  static const Color primaryLight = Color(0xFF007bff);
  static const Color primaryDark = Color(0xff0e0547);
  static const Color secondary = Color(0xFF6c757d);
  ThemeMode themeMode = ThemeMode.system;

   void onChangeTheme(bool isDark){
    themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryLight,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.teal,
      ),
      titleMedium: TextStyle(
        color: Colors.pinkAccent,
      ),
      titleSmall: TextStyle(
        color: Colors.blue,
      ),
      bodyLarge: TextStyle(
        color: Colors.purple
      ),

    ),
    // ... other theme properties
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryDark,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.red,
      ),
      titleMedium: TextStyle(
        color: Colors.yellow,
      ),
      titleSmall: TextStyle(
        color: Colors.green.shade900,
      ),
      bodyLarge: TextStyle(
          color: Colors.greenAccent
      ),
    ),
    // ... other theme properties
  );
}
