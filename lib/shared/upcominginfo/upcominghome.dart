// ignore_for_file: prefer_is_empty

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:http/http.dart' as http;
import 'package:today/shared/upcominginfo/comment1.dart';
import 'package:today/shared/upcominginfo/info1.dart';
import 'package:today/shared/upcominginfo/score1.dart';

import '../../modecontroller.dart';
import 'live1.dart';




class Upcominghome extends StatefulWidget {
  // const Homee5({ Key? key }) : super(key: key);
  var listdata;
  Upcominghome(this.listdata);

  @override
  State<Upcominghome> createState() => _UpcominghomeState();
}

final controller = Get.put(DarkModeController());

class _UpcominghomeState extends State<Upcominghome> {
  void initState() {
    super.initState();
    print(widget.listdata);
    getmatchdetails();
  }

  var matchinfo = [];

  getmatchdetails() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.listdata["match_id"]}/info?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data["response"]);
  
       matchinfo.add(data["response"]);
 
   
    print(matchinfo);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<DarkModeController>(builder: (controller) {
      return
  
       Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(controller.mode == 'light'
                      ? "assets/backgroundlight.jpg"
                      : "assets/background.jpg"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body:     matchinfo.length==0 ?Center(child: CircularProgressIndicator()): SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: controller.mode == 'light'
                          ? Color(0xff1A3A90)
                          : Color(0xff353e52),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                    ),
                    child: SingleChildScrollView(
                      child:    Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 215,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Image.network(
                                      // 'assets/ban.png',
                                      matchinfo[0]["teama"]["logo_url"].toString(),

                                      height: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      matchinfo[0]["teama"]["name"].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Text(
                                       matchinfo[0]["teama"]["scores_full"].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Image.asset(
                                  'assets/vs.png',
                                  height: 50,
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 35.0),
                                    child: Image.network(
                                      matchinfo[0]["teamb"]["logo_url"].toString(),
                                      height: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Text(
                                       matchinfo[0]["teamb"]["name"].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Text(
                                       matchinfo[0]["teamb"]["scores_full"].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Transform.translate(
                            offset: Offset(0, -40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                     // Get.to(Homee4());
                                    },
                                    child: Text(
                                      'SeriesInfo',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    )),
                                GestureDetector(
                                    onTap: () {
                                      //Get.to(Homee4());
                                    },
                                    child: Text(
                                      'Standings',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    )),
                                GestureDetector(
                                    onTap: () {
                                     // Get.to(Homee4());
                                    },
                                    child: Text(
                                      'Stats',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -180.0),
                  child: Container(
                    height: 37,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 20, 20),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      matchinfo[0]["status_str"].toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                Container(
                  height: 470,
                  width: double.infinity,
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: DefaultTabController(
                      length: 4,
                      child: Scaffold(
                        backgroundColor: Colors.transparent,
                        appBar: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4.0,
                          labelColor: controller.mode == 'light'
                              ? Color(0xff06122c)
                              : Colors.white,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                          indicatorColor: Color(0xff8cb3ea),
                          tabs: [
                            Tab(
                              text: "Info",
                            ),
                            Tab(
                              text: "Live",
                            ),
                            Tab(
                              text: "Scorecard",
                            ),
                            Tab(
                              text: "Commentary",
                            ),
                          ],
                        ),
                        body: TabBarView(
                          children: [
                            Infoo1(matchinfo),
                            Liveerror1(matchinfo),
                            Score1(matchinfo),
                            Comment1(matchinfo),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ));
    }));
  }
}
