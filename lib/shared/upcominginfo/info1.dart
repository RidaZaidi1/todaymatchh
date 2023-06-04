// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:today/screens/Squads/mainsquad.dart';
import 'package:get/get.dart';
import 'package:today/screens/series/playerlist2.dart';

import 'package:http/http.dart' as http;

import '../../modecontroller.dart';

class Infoo1 extends StatefulWidget {
  // const Infoo({ Key? key }) : super(key: key);
  var data;
  Infoo1(this.data);

  @override
  State<Infoo1> createState() => _Infoo1State();
}

final controller = Get.put(DarkModeController());

class _Infoo1State extends State<Infoo1> {
  void initState() {
    super.initState();

    print(widget.data);
    print("check krty hn ");
    print(widget.data[0]["umpires"].toString());
    getplayerdata();
  }

  var seriesprofilee1 = [];

  getplayerdata() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]['match_id']}/squads?token=f94a09518bdeb24c299555502fa6bdb6';
    //  'https://rest.entitysport.com/v2/competitions/${widget.data[0]['competition']['cid']}/teams/?token=f94a09518bdeb24c299555502fa6bdb6&per_page=50&&paged=1';
    final response = await http.get(Uri.parse(apiUrl));
    var data2 = json.decode(response.body);
    print('df');
    print(data2["response"]["teams"]);
    for (var i = 0; i < data2["response"]["teams"].length; i++) {
      seriesprofilee1.add(data2["response"]["teams"][i]);
      //print(matchlist.add(data["response"]["items"][i]));

    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 430,
                width: 380,
                decoration: BoxDecoration(
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.25))
                    ],
                    color: controller.mode == 'light'
                        ? Colors.white
                        : Color(0xff353e52),
                    borderRadius: BorderRadius.circular(30)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(-35, 0),
                            child: Container(
                              width: 80,
                              child: Text(
                                'Match',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-70, 0),
                            child: Container(
                                width: 80,
                                child:widget.data[0]["competition"]["match_format"].toString().isNotEmpty ? Text(
                                  widget.data[0]["competition"]["match_format"]
                                      .toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                ):Text(
                                 "no data",
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(-40, 0),
                            child: Container(
                              width: 80,
                              child: Text(
                                'Competition',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-70, 0),
                            child: Container(
                                width: 80,
                                child: Text(
                                  widget.data[0]["short_title"].toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(-40, 0),
                            child: Container(
                              width: 80,
                              child: Text(
                                'Date Time',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-70, 0),
                            child: Container(
                                width: 80,
                                child: Text(
                                  widget.data[0]["competition"]["datestart"]
                                      .toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(-38, 0),
                            child: Container(
                              width: 80,
                              child: Text(
                                'Vanue',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-70, 0),
                            child: Container(
                                width: 80,
                                child: Text(
                                  widget.data[0]["venue"]["name"].toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(-30, 0),
                            child: Container(
                              width: 120,
                              child: Text(
                                'Vanue loation',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-80, 0),
                            child: Container(
                                width: 80,
                                child: Text(
                                  widget.data[0]["venue"]["location"]
                                      .toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(0, 0),
                            child: Container(
                              width: 120,
                              child: Text(
                                'Umpires',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(8, 0),
                            child: Container(
                              width: 200,
                              child: Text(
                             widget.data[0]["umpires"].toString().isEmpty
                                    ? "No Data Found"
                                    : widget.data[0]["umpires"].toString(),
                                maxLines: 2,
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(0, 0),
                            child: Container(
                              width: 120,
                              child: Text(
                                'Referee',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(10, 0),
                            child: Container(
                                width: 200,
                                child: Text(
                                    widget.data[0]["referee"].toString().isEmpty
                                    ? "No Data Found"
                                    : widget.data[0]["referee"].toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )
                                ),
                               ),
                         
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Transform.translate(
                            offset: Offset(0, 0),
                            child: Container(
                              width: 120,
                              child: Text(
                                'Toss',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(10, 0),
                            child: Container(
                                width: 200,
                                
 child:widget.data[0]["toss"][0].toString()!='text' ? Text(
                                 'No Data Found',
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                ): Text(
                                 widget.data[0]["toss"]["text"].toString(),
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                )


                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -470.0),
              child: Container(
                height: 47,
                width: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 238, 20, 20),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  widget.data[0]["status_str"],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                'Playing 11',
                style: TextStyle(
                    color: controller.mode == 'light'
                        ? Color(0xff1A3A90)
                        : Color(0xff9db5ef),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 150,
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
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(8),
                    itemCount: seriesprofilee1.length,
                    itemBuilder: ((context, index) {
                      // print(matchlist[index]);
                      return Container(
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundImage: NetworkImage(
                                              seriesprofilee1[index]
                                                  ["logo_url"],
                                              // height: 30,
                                              // width: 30,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: GestureDetector(
                                              onTap: () {
                                                Get.to(Playerslist2(
                                                    seriesprofilee1[index]));
                                              },
                                              child: Text(
                                                  seriesprofilee1[index]
                                                      ["title"],
                                                  style: TextStyle(
                                                      color: controller.mode ==
                                                              'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500))),
                                        ),
                                      ],
                                    ),
                                  ],
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
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 30),
              child: Text(
                'Squads',
                style: TextStyle(
                    color: controller.mode == 'light'
                        ? Color(0xff1A3A90)
                        : Color(0xff9db5ef),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 150,
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
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(8),
                    itemCount: seriesprofilee1.length,
                    itemBuilder: ((context, index) {
                      // print(matchlist[index]);
                      return Container(
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundImage: NetworkImage(
                                              seriesprofilee1[index]
                                                  ["logo_url"],
                                              // height: 30,
                                              // width: 30,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: GestureDetector(
                                              onTap: () {
                                                Get.to(Squadmain(widget.data));
                                              },
                                              child: Text(
                                                  seriesprofilee1[index]
                                                      ["title"],
                                                  style: TextStyle(
                                                      color: controller.mode ==
                                                              'light'
                                                          ? Color(0xff020e28)
                                                          : Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500))),
                                        ),
                                      ],
                                    ),
                                  ],
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
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
