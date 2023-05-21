import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/screens/Players/mainplayer.dart';

import '../../modecontroller.dart';

class Squad11 extends StatefulWidget {
  const Squad11({Key? key}) : super(key: key);

  @override
  State<Squad11> createState() => _Squad11State();
}

final controller = Get.put(DarkModeController());

class _Squad11State extends State<Squad11> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(children: [
                 
                 
                 
                
                  Container(
                    height: 530,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Mainplayer()));
                                },
                                child: Container(
                                    height: 50,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/person.png",
                                          height: 55,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30),
                                              child: Text(
                                                "Brian vitori",
                                                style: TextStyle(
                                                    color: controller.mode ==
                                                            'light'
                                                        ? Color(0xff020e28)
                                                        : Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, top: 10),
                                              child: Text(
                                                "Zimbabwe",
                                                style: TextStyle(
                                                    color: controller.mode ==
                                                            'light'
                                                        ? Color(0xff1A3A90)
                                                        : Color(0xff9aaed5),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: controller.mode == 'light'
                                      ? Colors.grey
                                      : Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/person.png",
                                        height: 55,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Brian vitori",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              "Zimbabwe",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff1A3A90)
                                                          : Color(0xff9aaed5),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: controller.mode == 'light'
                                      ? Colors.grey
                                      : Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/person.png",
                                        height: 55,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Brian vitori",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              "Zimbabwe",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff1A3A90)
                                                          : Color(0xff9aaed5),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: controller.mode == 'light'
                                      ? Colors.grey
                                      : Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/person.png",
                                        height: 55,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Brian vitori",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              "Zimbabwe",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff1A3A90)
                                                          : Color(0xff9aaed5),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: controller.mode == 'light'
                                      ? Colors.grey
                                      : Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/person.png",
                                        height: 55,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Brian vitori",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              "Zimbabwe",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff1A3A90)
                                                          : Color(0xff9aaed5),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: controller.mode == 'light'
                                      ? Colors.grey
                                      : Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/person.png",
                                        height: 55,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 30),
                                            child: Text(
                                              "Brian vitori",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, top: 10),
                                            child: Text(
                                              "Zimbabwe",
                                              style: TextStyle(
                                                  color:
                                                      controller.mode == 'light'
                                                          ? Color(0xff1A3A90)
                                                          : Color(0xff9aaed5),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: controller.mode == 'light'
                                      ? Colors.grey
                                      : Colors.white,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ));
          
  }
}
