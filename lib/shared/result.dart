import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';
class Result extends StatefulWidget {
  const Result({ Key? key }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}
final controller = Get.put(DarkModeController());
class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
          Center(child: Text("Completed",style: TextStyle(
                                          color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500))),
            Container(
              height: 550,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, 10.0),
                          child: Container(
                            height: size.height * 0.11,
                            width: size.width * 0.99,
                            decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Color(0xfffd0001)
                                  : Color(0xff0B162C),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Transform.translate(
                                      offset: Offset(0, -20.0),
                                      child: Text(
                                        'Ireland tour of England ODI Series',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Transform.translate(
                                      offset: Offset(0, -20.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -30.0),
                          child: Container(
                            height: size.height * 0.22,
                            width: size.width * 0.99,
                            decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff353e52),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 200),
                                  child: Text('20 sep 23|16:30',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/ireland.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        Text(
                                          "Ireland",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/vs.png",
                                          height: 50,
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/ban.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        Text(
                                          "Bangladesh",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 20),
                                  child: Text("Lord's",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -50.0),
                          child: Container(
                            height: 35,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xfffd0001),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Start in 127d 15h 12m 32s',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280.0),
                          child: Transform.translate(
                            offset: Offset(0, -210.0),
                            child: Container(
                              height: 25,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color(0xfffd0001),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Center(
                                  child: Text(
                                'MATCH 1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, 10.0),
                          child: Container(
                            height: size.height * 0.11,
                            width: size.width * 0.99,
                            decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff31394A),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Transform.translate(
                                      offset: Offset(0, -20.0),
                                      child: Text(
                                        'Ireland tour of England ODI Series',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Transform.translate(
                                      offset: Offset(0, -20.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -30.0),
                          child: Container(
                            height: size.height * 0.22,
                            width: size.width * 0.99,
                            decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Colors.white
                                  :Color(0xff5e6474),
                                  boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 200),
                                  child: Text('20 sep 23|16:30',
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/ireland.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        Text(
                                          "Ireland",
                                          style: TextStyle(
                                              color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/vs.png",
                                          height: 50,
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/ban.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        Text(
                                          "Bangladesh",
                                          style: TextStyle(
                                              color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 20),
                                  child: Text("Lord's",
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -50.0),
                          child: Container(
                            height: 35,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xfffd0001),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Start in 127d 15h 12m 32s',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280.0),
                          child: Transform.translate(
                            offset: Offset(0, -210.0),
                            child: Container(
                              height: 25,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color(0xfffd0001),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Center(
                                  child: Text(
                                'MATCH 1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Transform.translate(
                          offset: Offset(0, 10.0),
                          child: Container(
                            height: size.height * 0.11,
                            width: size.width * 0.99,
                            decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff31394A),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Transform.translate(
                                      offset: Offset(0, -20.0),
                                      child: Text(
                                        'Ireland tour of England ODI Series',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Transform.translate(
                                      offset: Offset(0, -20.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -30.0),
                          child: Container(
                            height: size.height * 0.22,
                            width: size.width * 0.99,
                            decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Colors.white
                                  :Color(0xff5e6474),
                                  boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 25.0, left: 200),
                                  child: Text('20 sep 23|16:30',
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/ireland.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        Text(
                                          "Ireland",
                                          style: TextStyle(
                                              color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/vs.png",
                                          height: 50,
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/ban.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                        Text(
                                          "Bangladesh",
                                          style: TextStyle(
                                              color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, top: 20),
                                  child: Text("Lord's",
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                  ? Colors.black:Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0, -50.0),
                          child: Container(
                            height: 35,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xfffd0001),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Start in 127d 15h 12m 32s',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280.0),
                          child: Transform.translate(
                            offset: Offset(0, -210.0),
                            child: Container(
                              height: 25,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Color(0xfffd0001),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Center(
                                  child: Text(
                                'MATCH 1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}