import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';

class Stats extends StatefulWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  State<Stats> createState() => _StatsState();
}

final controller = Get.put(DarkModeController());

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Image.asset(
            "assets/standing.png",
            height: 200,
            width: 200,
          )),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 35,
            width: 200,
            decoration: BoxDecoration(
                color: Color(0xfffd0001),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              'Records Unavailable',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            )),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 60,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: controller.mode == 'light'
                    ? Color(0xff1A3A90)
                    : Color(0xff8cb3ea)),
            child: Center(
                child: Text(
              "Reload",
              style: TextStyle(
                  color: controller.mode == 'light'
                      ? Colors.white
                      : Color(0xff020e28),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
          )
        ],
      ),
    );
  }
}
