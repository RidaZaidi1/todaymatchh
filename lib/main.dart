import 'package:flutter/material.dart';
import 'package:today/screens/splash.dart';
import 'home.dart';
import 'modecontroller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   

    return GetBuilder<DarkModeController>(
      init: DarkModeController(),
      builder: (controller){
      return  GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'VIP Translator',
            theme: controller.lightTheme,
            darkTheme: controller.darkTheme,
            themeMode: controller.themeMode,
            home:  const SplashScrren());
      },

    );
  }
}

