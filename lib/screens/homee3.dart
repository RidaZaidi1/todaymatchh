import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:today/maininfo.dart';
import 'package:today/shared/standing.dart';
import 'package:today/shared/stats.dart';
import 'package:today/shared/team.dart';
import '../modecontroller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Homee4 extends StatefulWidget {

 // const Homee4({Key? key}) : super(key: key);
var SeriesProfile;
Homee4(this.SeriesProfile);
  @override
  _Homee4State createState() => _Homee4State();
}

final controller = Get.put(DarkModeController());

class _Homee4State extends State<Homee4> {
  //  void initState() {
  //   super.initState();
  // // print(widget.SeriesProfile);
  //   print("check");
  //   getmatchdetails();
  // }
  //  var seriesinfo = [];

  // getmatchdetails() async {
  //   final String apiUrl =
  //       'https://rest.entitysport.com/v2/seasons/2021/competitions/${widget.SeriesProfile["cid"]}/matches?token=f94a09518bdeb24c299555502fa6bdb6&per_page=10&&paged=1';
  //   final response = await http.get(Uri.parse(apiUrl));
  //   var data = json.decode(response.body);
  //  // print(data["response"]);
  //   seriesinfo.add(data["response"]);
  //  // print(seriesinfo);
  //   setState(() {
      
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: GetBuilder<DarkModeController>(
      builder: (controller) {
        return Container(
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
              body: DefaultTabController(
                length: 4,
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff353e52),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40))),
                          child: Transform.translate(
                              offset: Offset(0, -30.0),
                              child: Center(
                                  child: Text(
                                "Ireland tour of England Only Test",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ))),
                        ),
                        Transform.translate(
                          offset: Offset(0, -60.0),
                          child: Container(
                            height: 40,
                            width: size.width * 0.98,
                            decoration: BoxDecoration(
                                color: controller.mode == 'light'
                                    ? Color(0xff3452A0)
                                    : Colors.grey[700],
                                borderRadius: BorderRadius.circular(25.0)),
                            child: TabBar(
                              indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25.0)),
                              labelColor: Color(0xff0E317C),
                              unselectedLabelColor: Colors.white,
                              tabs: const [
                                Tab(
                                  text: 'Matches',
                                ),
                                Tab(
                                  text: 'Team',
                                ),
                                Tab(
                                  text: 'Standing',
                                ),
                                Tab(
                                  text: 'Stats',
                                ),
                              ],
                            ),
                          ),
                        ),
                         Expanded(
                            child: TabBarView(
                          children: [
                            MAtchinfoo(widget.SeriesProfile),
                            Team(widget.SeriesProfile),
                            Standing(widget.SeriesProfile),
                            Stats(),
                          ],
                        ))
                      ],
                    )),
              ),
            ));
      },
    ));
  }
}
