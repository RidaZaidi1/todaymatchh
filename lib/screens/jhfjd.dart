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
getmatchdetails3();
    getmatchdetails2();
  }

  var matchinfo2 = [];
   var matchinfo3 = [];
    var matchinfo4 = [];
  getmatchdetails2() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var i = 0;
        i < data["response"]["innings"].length;
        i++) {
      matchinfo2.add(data["response"]["innings"][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo2);
    setState(() {});
  }
   getmatchdetails3() async {
    final String apiUrl2 =
        'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/scorecard?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var i = 0;
        i < data["response"]["live_inning"]["did_not_bat"].length;
        i++) {
      matchinfo3.add(data["response"]["live_inning"]["did_not_bat"][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo3);
    setState(() {});
  }
    getmatchdetails4() async {
    final String apiUrl2 =
          'https://rest.entitysport.com/v2/matches/${widget.data[0]["mid"]}/live?&token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl2));
    var data = json.decode(response.body);
    print(data["response"]);

    for (var i = 0;
        i < data["response"]["live_inning"]["did_not_bat"].length;
        i++) {
      matchinfo4.add(data["response"]["live_inning"]["did_not_bat"][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }

    print(matchinfo3);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
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
                    padding: const EdgeInsets.only(right: 70.0),
                    child: Text(
                      widget.data[0]["live_inning"]["name"].toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    widget.data[0]["live_inning"]["scores_full"].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 400,
              width: 390,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
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
                            padding: const EdgeInsets.only(left: 70),
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
                            padding: const EdgeInsets.only(left: 15),
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
                            padding: const EdgeInsets.only(left: 15),
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
                            padding: const EdgeInsets.only(right: 40),
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
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Column(
                            children: [
                              Text(
                                'Nicloj laegsgarrd',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'c&b PF Gallagher',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '34',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            '29',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '113.24',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                'Hamid Mazhar',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'c raaz b Amjad sher',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '6',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '33.33',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Shangeev\nThanikaithasan',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'lbw b raaz \nmuhammad',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '9',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '6',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '150.00',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Column(
                            children: [
                              Text(
                                'Saif Ahmed',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Not Out',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '34',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            '29',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '113.24',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lucky Malik',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Not Out',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '34',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            '29',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '113.24',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                        padding: const EdgeInsets.only(left: 20.0, top: 2),
                        child: Container(
                          width: 280,
                          height: 60,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(8),
                            scrollDirection: Axis.horizontal,
                            itemCount: matchinfo2.length,
                            itemBuilder: ((context, index) {
                              return Text(
                                matchinfo2[index]["name"] + ",",
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              );
                            }
                                //
                                ),
                          ),
                        ))
                  ]),
            ),
          ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 70.0),
                              child: Transform.translate(
                                offset: Offset(-20, 0),
                                child: Text(
                                  'Stats',
                                  style: TextStyle(
                                      color: controller.mode == 'light'
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
                                      '${widget.data[0]["live_score"]["runrate"].toString()}',
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Transform.translate(
                                    offset: Offset(0, 0),
                                    child: Text(
                                      'Extras',
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                              ? Color(0xff1A3A90)
                                              : Color(0xff9db5ef),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  child: Transform.translate(
                                      offset: Offset(0, 0),
                                      child: Text(
                                        "B:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["byes"].toString()}' +
                                            "  " +
                                            "LB:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["legbyes"].toString()}' +
                                            "  " +
                                            "W:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["wides"].toString()}'+
                                            "  " +
                                            "NB:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["noballs"].toString()}'+
                                            "  " +
                                            "P:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["penalty"].toString()}'+
                                           "  " +
                                           "T:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["total"].toString()}'
                                            ,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 330,
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
                      : Color(0xff536373),
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'End of Over 14',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text(
                          'Denmark 116/3',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Saif Ahmed',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Text(
                          '34(29)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Lucky Malik',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Text(
                          '16(12)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Raaz muhammad',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          '3-0-28-1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Peter Gallagher',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Text(
                          '4-0-31-1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Total Run',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          '10',
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
            ),
          ),
          
           SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
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
                    padding: const EdgeInsets.only(right: 70.0),
                    child: Text(
                      widget.data[0]["live_inning"]["name"].toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    widget.data[0]["live_inning"]["scores_full"].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 400,
              width: 390,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
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
                            padding: const EdgeInsets.only(left: 70),
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
                            padding: const EdgeInsets.only(left: 15),
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
                            padding: const EdgeInsets.only(left: 15),
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
                            padding: const EdgeInsets.only(right: 40),
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
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Column(
                            children: [
                              Text(
                                'Nicloj laegsgarrd',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'c&b PF Gallagher',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '34',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            '29',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '113.24',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                'Hamid Mazhar',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'c raaz b Amjad sher',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '6',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '33.33',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Shangeev\nThanikaithasan',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'lbw b raaz \nmuhammad',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '9',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '6',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '150.00',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Column(
                            children: [
                              Text(
                                'Saif Ahmed',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Not Out',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '34',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            '29',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '113.24',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lucky Malik',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Not Out',
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '34',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            '29',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            '113.24',
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                        padding: const EdgeInsets.only(left: 20.0, top: 2),
                        child: Container(
                          width: 280,
                          height: 60,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(8),
                            scrollDirection: Axis.horizontal,
                            itemCount: matchinfo2.length,
                            itemBuilder: ((context, index) {
                              return Text(
                                matchinfo2[index]["name"] + ",",
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              );
                            }
                                //
                                ),
                          ),
                        ))
                  ]),
            ),
          ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 70.0),
                              child: Transform.translate(
                                offset: Offset(-20, 0),
                                child: Text(
                                  'Stats',
                                  style: TextStyle(
                                      color: controller.mode == 'light'
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
                                      '${widget.data[0]["live_score"]["runrate"].toString()}',
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Transform.translate(
                                    offset: Offset(0, 0),
                                    child: Text(
                                      'Extras',
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                              ? Color(0xff1A3A90)
                                              : Color(0xff9db5ef),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  child: Transform.translate(
                                      offset: Offset(0, 0),
                                      child: Text(
                                        "B:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["byes"].toString()}' +
                                            "  " +
                                            "LB:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["legbyes"].toString()}' +
                                            "  " +
                                            "W:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["wides"].toString()}'+
                                            "  " +
                                            "NB:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["noballs"].toString()}'+
                                            "  " +
                                            "P:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["penalty"].toString()}'+
                                           "  " +
                                           "T:" +
                                            '${widget.data[0]["live_inning"]["extra_runs"]["total"].toString()}'
                                            ,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 330,
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
                      : Color(0xff536373),
                  borderRadius: BorderRadius.circular(35)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'End of Over 14',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text(
                          'Denmark 116/3',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Saif Ahmed',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Text(
                          '34(29)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Lucky Malik',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Text(
                          '16(12)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Raaz muhammad',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Text(
                          '3-0-28-1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Peter Gallagher',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Text(
                          '4-0-31-1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          'Total Run',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text(
                          '10',
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
            ),
          ),
            SizedBox(
            height: 90,
          ),
         
        ])));
  }
}
