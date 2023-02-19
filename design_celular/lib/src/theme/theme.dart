import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool _darkTheme = false;
  bool _customTheme = false;

  late ThemeData _currentTheme;

  bool get darkTheme => _darkTheme;
  bool get customtheme => _customTheme;
  ThemeData get currentTheme => _currentTheme;

  ThemeChanger(int theme) {
    switch (theme) {
      case 1:
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.deepPurple));
        break;

      case 2:
        _darkTheme = true;
        _customTheme = false;
        _currentTheme = ThemeData.dark();
        break;

      case 3:
        _darkTheme = false;
        _customTheme = true;
        break;

      default:
        _darkTheme = false;
        _darkTheme = false;
        _currentTheme = ThemeData.light();
    }
  }

  set darkTheme(bool value) {
    _customTheme = false;
    _darkTheme = value;

    if (value) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData.light().copyWith(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.deepPurple));
    }
    notifyListeners();
  }

  set customtheme(bool value) {
    _customTheme = value;
    _darkTheme = false;

    if (value) {
      _currentTheme = ThemeData.dark().copyWith(
          primaryColorLight: Colors.white,
          scaffoldBackgroundColor: const Color(0xff16202B),
          textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff48A0EB))
          // textTheme.body1.color
          );
    } else {
      _currentTheme = ThemeData.light();
    }

    notifyListeners();
  }
}
