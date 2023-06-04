import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/screens/Ranking/mainrank.dart';

import '../modecontroller.dart';
import '../screens/Players/players.dart';

class Morepage extends StatefulWidget {
  const Morepage({Key? key}) : super(key: key);

  @override
  State<Morepage> createState() => _MorepageState();
}

final controller = Get.put(DarkModeController());

class _MorepageState extends State<Morepage> {
  bool swvalue = true;
  bool switchControl1 = false;
  bool switchControl = false;
  var textHolder = 'Switch is OFF';
  var textHolder1 = 'Switch is OFF';
  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void toggleSwitch1(bool value) {
    if (switchControl1 == false) {
      setState(() {
        switchControl1 = true;
        textHolder1 = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl1 = false;
        textHolder1 = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 270),
            child: Text(
              'Browse',
              style: TextStyle(
                  color: controller.mode == 'light'
                      ? Color(0xff020e28)
                      : Color(0xff9aaed5),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 130,
              width: 400,
              decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 0.25))
                  ],
                  color: controller.mode == 'light'
                      ? Colors.white
                      : Color(0xff373e52),
                  borderRadius: BorderRadius.circular(30)),
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 23,
                        ),
                        child: GestureDetector(
                            onTap: () {
                               Get.to( Playerslist());
                             
                            },
                            child: Text('Player',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 23),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: controller.mode == 'light'
                              ? Colors.black
                              : Color(0xff9aaed5),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 25.0),
                    child: Divider(
                      color: controller.mode == 'light'
                          ? Colors.grey
                          : Colors.white,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 23,
                        ),
                        child: GestureDetector(
                            onTap: () {
                                   Get.to( Mainrank());
                            
                            },
                            child: Text('Rankings',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 23),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: controller.mode == 'light'
                              ? Color(0xff020e28)
                              : Color(0xff9aaed5),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 280),
            child: Text(
              'App',
              style: TextStyle(
                  color: controller.mode == 'light'
                      ? Color(0xff020e28)
                      : Color(0xff9aaed5),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 330,
              width: 400,
              decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 5.0,
                        offset: Offset(0.0, 0.25))
                  ],
                  color: controller.mode == 'light'
                      ? Colors.white
                      : Color(0xff373e52),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 23,
                      ),
                      child: Text('Notification',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Transform.scale(
                          scale: 1.2,
                          child: Switch(
                            onChanged: toggleSwitch,
                            value: switchControl,
                            activeColor: Color.fromARGB(255, 127, 192, 245),
                            activeTrackColor: controller.mode == 'light'
                                ? Color(0xff020e28)
                                : Colors.blue,
                            inactiveThumbColor: controller.mode == 'light'
                                ? Color(0xff020e28)
                                : Colors.grey,
                            inactiveTrackColor: controller.mode == 'light'
                                ? Colors.grey
                                : Colors.white,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 25.0),
                  child: Divider(
                    color:
                        controller.mode == 'light' ? Colors.grey : Colors.white,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 23,
                      ),
                      child: Text('Dark mode',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Transform.scale(
                          scale: 1.2,
                          child: Switch(
                            onChanged: (value) {
                              controller.toggleTheme();
                              swvalue = !swvalue;
                              setState(() {});
                            },
                            value: swvalue,
                            activeColor: Color.fromARGB(255, 127, 192, 245),
                            activeTrackColor: controller.mode == 'light'
                                ? Color(0xff020e28)
                                : Colors.blue,
                            inactiveThumbColor: controller.mode == 'light'
                                ? Color(0xff020e28)
                                : Colors.grey,
                            inactiveTrackColor: controller.mode == 'light'
                                ? Colors.grey
                                : Colors.white,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 25.0),
                  child: Divider(
                    color:
                        controller.mode == 'light' ? Colors.grey : Colors.white,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 23,
                      ),
                      child: Text('Feedback',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.feedback,
                        color: controller.mode == 'light'
                            ? Color(0xff020e28)
                            : Color(0xff9db5ef),
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 25.0),
                  child: Divider(
                    color:
                        controller.mode == 'light' ? Colors.grey : Colors.white,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 23,
                      ),
                      child: Text('Rate us',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.star,
                        color: controller.mode == 'light'
                            ? Color(0xff020e28)
                            : Color(0xff9db5ef),
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 25.0),
                  child: Divider(
                    color:
                        controller.mode == 'light' ? Colors.grey : Colors.white,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 23,
                      ),
                      child: Text('Share',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Colors.black
                                  : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Icon(
                        Icons.share,
                        color: controller.mode == 'light'
                            ? Color(0xff020e28)
                            : Color(0xff9db5ef),
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
