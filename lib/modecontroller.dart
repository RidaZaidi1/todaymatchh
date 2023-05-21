import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class DarkModeController extends GetxController {

  String mode='dark';
  ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.orange),
    bottomAppBarColor: Colors.amber,
      backgroundColor: Colors.amberAccent,
      buttonColor: Colors.red
      

  );

  ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    bottomAppBarColor: Colors.black,
    backgroundColor: Colors.black87
  );

  ThemeMode themeMode = ThemeMode.dark;

//________________switch theme function 
  void toggleTheme() { 
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
      mode='dark';
    } else {
      themeMode = ThemeMode.light;
      mode='light';
    }
    update();
  }
}

