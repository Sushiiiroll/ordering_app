import 'package:flutter/cupertino.dart';
import 'package:ordering_app/services/dark_theme_prefs.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
bool _darkTheme = false;
bool get getDarkTheme => _darkTheme;

  bool get darkTheme => true;

set setDarkTheme (bool value){
  _darkTheme = value;
  darkThemePrefs.setDarkTheme(value);
  notifyListeners();
}
}