import 'package:flutter/material.dart';
import 'package:speedoz/constant/constant.dart';
import 'package:speedoz/theme/StorageManager.dart';

class ThemeNotifier with ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  final lightTheme = ThemeData(backgroundColor: Colors.white,
    primaryColor: CustomColors.primary,
    accentColor: CustomColors.primary,
    disabledColor: CustomColors.primary,
    colorScheme: const ColorScheme.light().copyWith(
        background: Colors.white,
        onBackground: CustomColors.darkText,
        primary: CustomColors.primary,
        onPrimary: Colors.white,
        secondary: CustomColors.primary,
        onSecondary: Colors.white),
    dividerColor: CustomColors.divider,
    iconTheme: const IconThemeData(
      color: CustomColors.primary,
    ),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      // color: CustomColors.background,
      elevation: 1,
      iconTheme: IconThemeData(color: CustomColors.darkText),
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: CustomColors.darkText,
        fontWeight: FontWeight.w500,
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle:
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );

  late ThemeData _themeData;
  ThemeData getTheme() => _themeData;

  ThemeNotifier() {
    StorageManager.readData('themeMode').then((value) {
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _isDark = false;
        _themeData = lightTheme;
      } else {
        _isDark = true;
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _isDark = true;
    _themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _isDark = false;
    _themeData = lightTheme;
    StorageManager.saveData('themeMode', 'light');
    notifyListeners();
  }
}