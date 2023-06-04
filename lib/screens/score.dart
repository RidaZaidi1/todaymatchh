import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modecontroller.dart';

class Score extends StatefulWidget {
  // const Score({ Key? key }) : super(key: key);
  var data;
  Score(this.data);
  @override
  State<Score> createState() => _ScoreState();
}

final controller = Get.put(DarkModeController());

class _ScoreState extends State<Score> {
  void initState() {
    super.initState();
    print(widget.data[0]["mid"]);

    getmatchdetails2();
    getmatchdetails3();
    getmatchdetails4();
    getmatchdetails5();
    getmatchdetails6();


getinfo1();
getinfo2();
getinfo3();
getinfo4();
getinfo5();
  }

 
  var matchinfo2 = [];
  var matchinfo3 = [];
  var matchinfo4 = [];
  var matchinfo5 = [];
  var matchinfo6 = [];


  var info1=[];
 var info2=[];
  var info3=[];
   var info4=[];
    var info5=[];
    


  getmatchdetails2() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    for (var i = 0; i < 1; i++) {
      matchinfo2.add(data["response"]["innings"][i]);
    }
    setState(() {});
  }

  getmatchdetails3() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data2 = json.decode(response.body);
    print(data2["response"]);

    for (var l = 0;
        l < data2["response"]["innings"][0]["batsmen"].length;
        l++) {
      matchinfo3.add(data2["response"]["innings"][0]["batsmen"][l]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo3);
    setState(() {});
  }

  getmatchdetails4() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var i = 0;
        i < data["response"]["innings"][0]["did_not_bat"].length;
        i++) {
      matchinfo4.add(data["response"]["innings"][0]["did_not_bat"][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo4);
    setState(() {});
  }

  getmatchdetails5() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var l = 0; l < data["response"]["innings"][0]["bowlers"].length; l++) {
      matchinfo5.add(data["response"]["innings"][0]["bowlers"][l]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo5);
    setState(() {});
  }

  getmatchdetails6() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var l = 0; l < data["response"]["innings"][0]["fows"].length; l++) {
      matchinfo6.add(data["response"]["innings"][0]["fows"][l]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo6);
    setState(() {});
  }

 getinfo1() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    for (var i = 1; i < 2; i++) {
      info1.add(data["response"]["innings"][i]);
    }
    setState(() {});
  }

  getinfo2() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data2 = json.decode(response.body);
    print(data2["response"]);

    for (var l = 0;
        l < data2["response"]["innings"][1]["batsmen"].length;
        l++) {
      info2.add(data2["response"]["innings"][1]["batsmen"][l]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo3);
    setState(() {});
  }

  getinfo3() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var i = 0;
        i < data["response"]["innings"][1]["did_not_bat"].length;
        i++) {
      info3.add(data["response"]["innings"][1]["did_not_bat"][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo4);
    setState(() {});
  }

  getinfo4() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var l = 0; l < data["response"]["innings"][1]["bowlers"].length; l++) {
      info4.add(data["response"]["innings"][1]["bowlers"][l]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo5);
    setState(() {});
  }

  getinfo5() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var l = 0; l < data["response"]["innings"][1]["fows"].length; l++) {
      info5.add(data["response"]["innings"][1]["fows"][l]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo6);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Column(
              children: [
                
                Container(
          height: 500,
          width: 390,
          child: ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
                physics: BouncingScrollPhysics(),
                itemCount: matchinfo2.length,
                itemBuilder: ((context, index) {
                  return Container(
                      height: 600,
                      width: 400,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          // 1st Container start
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Container(
                              height: 70,
                              width: 390,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Text(
                                      matchinfo2[index]["name"].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    matchinfo2[index]["scores_full"].toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
// 1st Container end
                          SizedBox(
                            height: 10,
                          ),
                          // 2nd Container start batsman
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 300,
                              width: 430,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Batsmen',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 70),
                                            child: Text(
                                              'R',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'B',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              '4s',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text(
                                              '6s',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 30, left: 10),
                                            child: Text(
                                              'S.R',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ]),
                                    Container(
                                      height: 300,
                                      width: 400,
                                      child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          // padding: const EdgeInsets.all(8),

                                          itemCount: matchinfo3.length,
                                          itemBuilder: ((context1, index1) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 13),
                                                    child: Container(
                                                      width: 110,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            matchinfo3[index1]
                                                                    ["name"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Color(
                                                                        0xff020e28)
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          Transform.translate(
                                                            offset: Offset(0, 0),
                                                            child: Text(
                                                              matchinfo3[index1]
                                                                      ["how_out"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: controller
                                                                              .mode ==
                                                                          'light'
                                                                      ? Color(
                                                                          0xff1A3A90)
                                                                      : Color(
                                                                          0xff9db5ef),
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      matchinfo3[index1]["runs"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 0),
                                                    child: Text(
                                                      matchinfo3[index1]
                                                              ["balls_faced"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      matchinfo3[index1]["fours"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      matchinfo3[index1]["sixes"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 15),
                                                    child: Text(
                                                      matchinfo3[index1]
                                                              ["strike_rate"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          })),
                                    ),
                                    SizedBox(height: 25),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // 2nd containe batsman end
                          SizedBox(
                            height: 10,
                          ),
                          // Did Container start
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              height: 100,
                              width: 380,
                              decoration: BoxDecoration(
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        "Did not bat",
                                        style: TextStyle(
                                            color: controller.mode == 'light'
                                                ? Color(0xff1A3A90)
                                                : Color(0xff9db5ef),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, top: 2),
                                        child: Container(
                                          width: 270,
                                          height: 60,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: const EdgeInsets.all(8),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: matchinfo4.length,
                                            itemBuilder: ((context2, index2) {
                                              return matchinfo4[index2][0]
                                                      .toString()
                                                      .isEmpty
                                                  ? Text(
                                                      'No Data Found',
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    )
                                                  : Text(
                                                      matchinfo4[index2]["name"]
                                                              .toString() +
                                                          ",",
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    );
                                            }
                                                //
                                                ),
                                          ),
                                        ))
                                  ]),
                            ),
                          ),
                          // Did container end
                          // Stat container start
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              height: 80,
                              width: 390,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Transform.translate(
                                offset: Offset(-25, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 70.0),
                                              child: Transform.translate(
                                                offset: Offset(-20, 0),
                                                child: Text(
                                                  'Stats',
                                                  style: TextStyle(
                                                      color:
                                                          controller.mode == 'light'
                                                              ? Color(0xff1A3A90)
                                                              : Color(0xff9db5ef),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            Transform.translate(
                                                offset: Offset(-110, 0),
                                                child: Text(
                                                  "CRR " +
                                                      '${matchinfo2[index]["equations"]["runrate"].toString()}',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 0.0),
                                                  child: Transform.translate(
                                                    offset: Offset(0, 0),
                                                    child: Text(
                                                      'Extras',
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff1A3A90)
                                                              : Color(0xff9db5ef),
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                  child: Transform.translate(
                                                      offset: Offset(0, 0),
                                                      child: Text(
                                                        "B:" +
                                                            '${matchinfo2[index]["extra_runs"]["byes"].toString()}' +
                                                            "  " +
                                                            "LB:" +
                                                            '${matchinfo2[index]["extra_runs"]["legbyes"].toString()}' +
                                                            "  " +
                                                            "W:" +
                                                            '${matchinfo2[index]["extra_runs"]["wides"].toString()}' +
                                                            "  " +
                                                            "NB:" +
                                                            '${matchinfo2[index]["extra_runs"]["noballs"].toString()}' +
                                                            "  " +
                                                            "P:" +
                                                            '${matchinfo2[index]["extra_runs"]["penalty"].toString()}' +
                                                            "  " +
                                                            "T:" +
                                                            '${matchinfo2[index]["extra_runs"]["total"].toString()}',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500),
                                                      ))),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Stat container end

                          // Bowler container start
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 300,
                              width: 430,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Bowlers',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 70),
                                            child: Text(
                                              'O',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'M',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'R',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text(
                                              'W',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 30, left: 10),
                                            child: Text(
                                              'E',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ]),
                                    Container(
                                      height: 300,
                                      width: 400,
                                      child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          // padding: const EdgeInsets.all(8),

                                          itemCount: matchinfo3.length,
                                          itemBuilder: ((context1, index1) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 13),
                                                    child: Container(
                                                      width: 110,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            matchinfo5[index1]
                                                                    ["name"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Color(
                                                                        0xff020e28)
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      matchinfo5[index1]["overs"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 0),
                                                    child: Text(
                                                      matchinfo5[index1]["maidens"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      matchinfo5[index1]["run0"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      matchinfo5[index1]["wickets"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 15),
                                                    child: Text(
                                                      matchinfo5[index1]["econ"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          })),
                                    ),
                                    SizedBox(height: 25),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Bowlers container end
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              height: 250,
                              width: 380,
                              decoration: BoxDecoration(
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Transform.translate(
                                              offset: Offset(-10, 0),
                                              child: Text(
                                                'Fall of wickets',
                                                style: TextStyle(
                                                    color:
                                                        controller.mode == 'light'
                                                            ? Color(0xff1A3A90)
                                                            : Color(0xff9db5ef),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Transform.translate(
                                              offset: Offset(-10, 0),
                                              child: Text(
                                                'Score',
                                                style: TextStyle(
                                                    color:
                                                        controller.mode == 'light'
                                                            ? Color(0xff1A3A90)
                                                            : Color(0xff9db5ef),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Transform.translate(
                                              offset: Offset(-10, 0),
                                              child: Text(
                                                'Over',
                                                style: TextStyle(
                                                    color:
                                                        controller.mode == 'light'
                                                            ? Color(0xff1A3A90)
                                                            : Color(0xff9db5ef),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 200,
                                      width: 400,
                                      child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          // padding: const EdgeInsets.all(8),

                                          itemCount: matchinfo6.length,
                                          itemBuilder: ((context1, index2) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 13),
                                                      child: Container(
                                                        width: 110,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              matchinfo6[index2]
                                                                      ["name"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: controller
                                                                              .mode ==
                                                                          'light'
                                                                      ? Color(
                                                                          0xff020e28)
                                                                      : Colors
                                                                          .white,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 30,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.only(),
                                                        child: Transform.translate(
                                                          offset: Offset(-10, 0),
                                                          child: Text(
                                                            matchinfo6[index2]
                                                                    ["runs"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Colors.black
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 30,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.only(),
                                                        child: Transform.translate(
                                                          offset: Offset(-25, 0),
                                                          child: Text(
                                                            matchinfo6[index2][
                                                                    "overs_at_dismissal"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Colors.black
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            );
                                          })),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                        ]),
                      ));
                }),
          ),
        ),
        // 1st list end 
         Container(
          height: 500,
          width: 390,
          child: ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
                physics: BouncingScrollPhysics(),
                itemCount: info1.length,
                itemBuilder: ((context, index) {
                  return Container(
                      height: 600,
                      width: 400,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          // 1st Container start
                          Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Container(
                              height: 70,
                              width: 390,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Text(
                                      info1[index]["name"].toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    info1[index]["scores_full"].toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
// 1st Container end
                          SizedBox(
                            height: 10,
                          ),
                          // 2nd Container start batsman
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 300,
                              width: 430,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Batsmen',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 70),
                                            child: Text(
                                              'R',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'B',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              '4s',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text(
                                              '6s',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 30, left: 10),
                                            child: Text(
                                              'S.R',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ]),
                                    Container(
                                      height: 300,
                                      width: 400,
                                      child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          // padding: const EdgeInsets.all(8),

                                          itemCount: info2.length,
                                          itemBuilder: ((context1, index1) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 13),
                                                    child: Container(
                                                      width: 110,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            info2[index1]
                                                                    ["name"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Color(
                                                                        0xff020e28)
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          Transform.translate(
                                                            offset: Offset(0, 0),
                                                            child: Text(
                                                              info2[index1]
                                                                      ["how_out"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: controller
                                                                              .mode ==
                                                                          'light'
                                                                      ? Color(
                                                                          0xff1A3A90)
                                                                      : Color(
                                                                          0xff9db5ef),
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      info2[index1]["runs"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 0),
                                                    child: Text(
                                                      info2[index1]
                                                              ["balls_faced"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      info2[index1]["fours"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      info2[index1]["sixes"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 15),
                                                    child: Text(
                                                      info2[index1]
                                                              ["strike_rate"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          })),
                                    ),
                                    SizedBox(height: 25),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // 2nd containe batsman end
                          SizedBox(
                            height: 10,
                          ),
                          // Did Container start
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              height: 100,
                              width: 380,
                              decoration: BoxDecoration(
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        "Did not bat",
                                        style: TextStyle(
                                            color: controller.mode == 'light'
                                                ? Color(0xff1A3A90)
                                                : Color(0xff9db5ef),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, top: 2),
                                        child: Container(
                                          width: 270,
                                          height: 60,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: const EdgeInsets.all(8),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: info3.length,
                                            itemBuilder: ((context2, index2) {
                                              return info3[index2][0]
                                                      .toString()
                                                      .isEmpty
                                                  ? Text(
                                                      'No Data Found',
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    )
                                                  : Text(
                                                      info3[index2]["name"]
                                                              .toString() +
                                                          ",",
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w800),
                                                    );
                                            }
                                                //
                                                ),
                                          ),
                                        ))
                                  ]),
                            ),
                          ),
                          // Did container end
                          // Stat container start
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              height: 80,
                              width: 390,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Transform.translate(
                                offset: Offset(-25, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 70.0),
                                              child: Transform.translate(
                                                offset: Offset(-20, 0),
                                                child: Text(
                                                  'Stats',
                                                  style: TextStyle(
                                                      color:
                                                          controller.mode == 'light'
                                                              ? Color(0xff1A3A90)
                                                              : Color(0xff9db5ef),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            Transform.translate(
                                                offset: Offset(-110, 0),
                                                child: Text(
                                                  "CRR " +
                                                      '${info1[index]["equations"]["runrate"].toString()}',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w500),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      right: 0.0),
                                                  child: Transform.translate(
                                                    offset: Offset(0, 0),
                                                    child: Text(
                                                      'Extras',
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff1A3A90)
                                                              : Color(0xff9db5ef),
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                  child: Transform.translate(
                                                      offset: Offset(0, 0),
                                                      child: Text(
                                                        "B:" +
                                                            '${info1[index]["extra_runs"]["byes"].toString()}' +
                                                            "  " +
                                                            "LB:" +
                                                            '${info1[index]["extra_runs"]["legbyes"].toString()}' +
                                                            "  " +
                                                            "W:" +
                                                            '${info1[index]["extra_runs"]["wides"].toString()}' +
                                                            "  " +
                                                            "NB:" +
                                                            '${info1[index]["extra_runs"]["noballs"].toString()}' +
                                                            "  " +
                                                            "P:" +
                                                            '${info1[index]["extra_runs"]["penalty"].toString()}' +
                                                            "  " +
                                                            "T:" +
                                                            '${info1[index]["extra_runs"]["total"].toString()}',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w500),
                                                      ))),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Stat container end

                          // Bowler container start
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 300,
                              width: 430,
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Bowlers',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 70),
                                            child: Text(
                                              'O',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'M',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              'R',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5),
                                            child: Text(
                                              'W',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 30, left: 10),
                                            child: Text(
                                              'E',
                                              style: TextStyle(
                                                  color: controller.mode == 'light'
                                                      ? Color(0xff1A3A90)
                                                      : Color(0xff9db5ef),
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ]),
                                    Container(
                                      height: 300,
                                      width: 400,
                                      child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          // padding: const EdgeInsets.all(8),

                                          itemCount: info4.length,
                                          itemBuilder: ((context1, index1) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 13),
                                                    child: Container(
                                                      width: 110,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            info4[index1]
                                                                    ["name"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Color(
                                                                        0xff020e28)
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 10),
                                                    child: Text(
                                                      info4[index1]["overs"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 0),
                                                    child: Text(
                                                      info4[index1]["maidens"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      info4[index1]["run0"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      info4[index1]["wickets"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 15),
                                                    child: Text(
                                                      info4[index1]["econ"]
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: controller.mode ==
                                                                  'light'
                                                              ? Color(0xff020e28)
                                                              : Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          })),
                                    ),
                                    SizedBox(height: 25),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Bowlers container end
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Container(
                              height: 250,
                              width: 380,
                              decoration: BoxDecoration(
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
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Transform.translate(
                                              offset: Offset(-10, 0),
                                              child: Text(
                                                'Fall of wickets',
                                                style: TextStyle(
                                                    color:
                                                        controller.mode == 'light'
                                                            ? Color(0xff1A3A90)
                                                            : Color(0xff9db5ef),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Transform.translate(
                                              offset: Offset(-10, 0),
                                              child: Text(
                                                'Score',
                                                style: TextStyle(
                                                    color:
                                                        controller.mode == 'light'
                                                            ? Color(0xff1A3A90)
                                                            : Color(0xff9db5ef),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 50,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Transform.translate(
                                              offset: Offset(-10, 0),
                                              child: Text(
                                                'Over',
                                                style: TextStyle(
                                                    color:
                                                        controller.mode == 'light'
                                                            ? Color(0xff1A3A90)
                                                            : Color(0xff9db5ef),
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 200,
                                      width: 400,
                                      child: ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          // padding: const EdgeInsets.all(8),

                                          itemCount: info5.length,
                                          itemBuilder: ((context1, index2) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 13),
                                                      child: Container(
                                                        width: 110,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              info5[index2]
                                                                      ["name"]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: controller
                                                                              .mode ==
                                                                          'light'
                                                                      ? Color(
                                                                          0xff020e28)
                                                                      : Colors
                                                                          .white,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 30,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.only(),
                                                        child: Transform.translate(
                                                          offset: Offset(-10, 0),
                                                          child: Text(
                                                            info5[index2]
                                                                    ["runs"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Colors.black
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 50,
                                                      height: 30,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.only(),
                                                        child: Transform.translate(
                                                          offset: Offset(-25, 0),
                                                          child: Text(
                                                            info5[index2][
                                                                    "overs_at_dismissal"]
                                                                .toString(),
                                                            style: TextStyle(
                                                                color: controller
                                                                            .mode ==
                                                                        'light'
                                                                    ? Colors.black
                                                                    : Colors.white,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ]),
                                            );
                                          })),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                        ]),
                      ));
                }),
          ),
        ),
              ],
            )));
  }
}
