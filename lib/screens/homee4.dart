// ignore_for_file: prefer_is_empty

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/screens/comment.dart';
import 'package:today/screens/score.dart';
import 'package:today/shared/liveerror.dart';
import 'package:today/shared/result.dart';
import 'package:today/shared/upcoming.dart';
import 'package:http/http.dart' as http;

import '../modecontroller.dart';
import 'homee3.dart';
import 'info.dart';
import 'livee.dart';

class Homee5 extends StatefulWidget {
  // const Homee5({ Key? key }) : super(key: key);
  var listdata;
  Homee5(this.listdata);

  @override
  State<Homee5> createState() => _Homee5State();
}

final controller = Get.put(DarkModeController());

class _Homee5State extends State<Homee5> {
  void initState() {
    super.initState();
    print(widget.listdata);
    getmatchdetails();
      getmatchdetails1();
  }

  var matchinfo = [];
 var matchinfo1 = [];
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
 getmatchdetails1() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.listdata["match_id"]}/live?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data["response"]);
  
       matchinfo1.add(data["response"]);
 
   
    print(matchinfo1);
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
              child: SingleChildScrollView(
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
                                Transform.translate(
                                  offset: Offset(-8,0),
                                  child: Container(
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: Image.network(
                                            // 'assets/ban.png',
                                            matchinfo[0]["teama"]["logo_url"],
                                
                                            height: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: Text(
                                            matchinfo[0]["teama"]["name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                         Padding(
                                          padding: const EdgeInsets.only(right: 30.0),
                                          child: Container(
                                            width: 100,
                                            child: Text(
                                               matchinfo[0]["teama"]["scores_full"],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-15,0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 25.0),
                                    child: Image.asset(
                                      'assets/vs.png',
                                      height: 50,
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-15,0),
                                  child: Container(
                                    width: 100,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 35.0),
                                            child: Image.network(
                                              matchinfo[0]["teamb"]["logo_url"],
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 30.0),
                                            child: Text(
                                               matchinfo[0]["teamb"]["name"],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                           Padding(
                                            padding: const EdgeInsets.only(right: 30.0),
                                            child: Container(
                                              width: 100,
                                              child: Text(
                                                 matchinfo[0]["teamb"]["scores_full"],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 238, 20, 20),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        matchinfo[0]["status_str"],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w900),
                      )),
                    ),
                  ),
                  Container(
                    height: 540,
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
                              Infoo(matchinfo),
                              Livee(matchinfo1),
                              Score(matchinfo1),
                              Commentary(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ));
    }));
  }
}
