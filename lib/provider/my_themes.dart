import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.blueGrey[900],
    primaryColor: Colors.black,
    primaryColorLight: Colors.cyanAccent,
    highlightColor: const Color.fromRGBO(255, 255, 255, 0.1),
    backgroundColor: Colors.blue[200],
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.pink[900]),
      headline2: TextStyle(color: Colors.pink[200]),
      headline3: const TextStyle(color: Colors.pink),
      headline4: const TextStyle(color: Colors.purpleAccent),
      headline5: TextStyle(color: Colors.blueAccent[700]),
      headline6: TextStyle(color: Colors.purpleAccent[700]),
      subtitle1: const TextStyle(color: Colors.pink),
      subtitle2: const TextStyle(color: Colors.pink),
      bodyText1: const TextStyle(color: Colors.white),
      bodyText2: const TextStyle(color: Colors.purple),
      overline: TextStyle(color: Colors.pink[200]),
    ),
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.purple),
    hoverColor: Colors.blue,
    dividerColor: Colors.pink[800],
  );

  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue[900],
    ),
    scaffoldBackgroundColor: Colors.grey[100],
    primaryColor: Colors.white,
    primaryColorLight: Colors.purpleAccent[100],
    highlightColor: const Color.fromRGBO(0, 0, 0, 0.1),
    backgroundColor: Colors.blue[800],
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.blue[900]),
      headline2: TextStyle(color: Colors.blue[700]),
      headline3: const TextStyle(color: Colors.blue),
      headline4: const TextStyle(color: Colors.blueAccent),
      headline5: TextStyle(color: Colors.purpleAccent.shade700),
      headline6: TextStyle(color: Colors.blueAccent[100]),
      subtitle1: const TextStyle(color: Colors.blue),
      subtitle2: const TextStyle(color: Colors.blue),
      bodyText1: const TextStyle(color: Colors.black),
      bodyText2: const TextStyle(color: Colors.cyan),
      overline: TextStyle(color: Colors.blue[50]),
    ),
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.cyan),
    hoverColor: Colors.blue[200],
    dividerColor: Colors.pinkAccent,
  );
}