import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';


class DarkModeController extends GetxController {
  String? date;
  //_______________________on init
  

  

 

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
    getDateDiff(String date) {
    DateTime currentDateTime = DateTime.now();
    DateTime matchStartDateTime = DateTime.parse(date);
    Duration difference = matchStartDateTime.difference(currentDateTime);
    int days = difference.inDays;
    int hours = difference.inHours.remainder(24);
    int minutes = difference.inMinutes.remainder(60);
    int seconds = difference.inSeconds.remainder(60);

    String formattedCountdown =
        "Start in $days\D $hours\H $minutes\M  $seconds\S";

    return formattedCountdown;
  }
    bool isDifferenceGreaterThan48Hours(String date) {
    
  DateTime currentDate = DateTime.now();
  DateTime providedDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);

  Duration difference = currentDate.difference(providedDate);
  print('_________${difference.inHours.toInt()}');
  if(difference.inHours.toInt()<-48){
    return false;
  }
  else {
    return true;
  }
}
}

