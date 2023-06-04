import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modecontroller.dart';

class Livee extends StatefulWidget {
  //const Livee({ Key? key }) : super(key: key);
  var data;
  Livee(this.data);
  @override
  State<Livee> createState() => _LiveeState();
}

final controller = Get.put(DarkModeController());

class _LiveeState extends State<Livee> {
  void initState() {
    super.initState();

    print(widget.data[0]["current_partnership"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: widget.data[0]["status_str"]!="Completed"? Column(children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 200,
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
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 28,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              widget.data[0]["live_inning"]["name"]
                                  .toString()
                                  .split(" ")
                                  .toString()
                                  .substring(1, 8),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff9db5ef),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              widget.data[0]["live_inning"]["scores_full"]
                                  .toString(),
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
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 10),
                        child: Text(
                          'CRR:8.920',
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
                    padding:
                        const EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Divider(
                      color: controller.mode == 'light'
                          ? Colors.grey
                          : Colors.white,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              'Partnership',
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff9db5ef),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              '${widget.data[0]["live_inning"]["current_partnership"]["runs"].toString() + ".0 (" + widget.data[0]["live_inning"]["current_partnership"]["balls"].toString() + ".0)"}',
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
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 70, top: 15),
                            child: Text(
                              'Last wicket',
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff9db5ef),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: widget.data[0]["live_inning"]
                                              ["last_wicket"][0]
                                          .toString() !=
                                      'name'
                                  ? Text(
                                      'No Data Found',
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                              ? Color(0xff020e28)
                                              : Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800),
                                    )
                                  : Text(
                                     '${widget.data[0]["live_inning"]["last_wicket"]["name"].toString()+" " +widget.data[0]["live_inning"]["last_wicket"]["runs"].toString() +" ("+widget.data[0]["live_inning"]["last_wicket"]["balls"].toString()+")" }',
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                              ? Color(0xff020e28)
                                              : Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w800),
                                    )
                              // child: Text('${widget.data[0]["live_inning"]["last_wicket"]["name"].toString()+" " +widget.data[0]["live_inning"]["last_wicket"]["runs"].toString() +" ("+widget.data[0]["live_inning"]["last_wicket"]["balls"].toString()+")" }',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500),),
                              ),
                        ],
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
              height: 100,
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
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          'Last 5 Over',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Color(0xff020e28)
                                  : Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(
                          widget.data[0]["live_inning"]["last_five_overs"]
                              .toString(),
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
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          'Last 10 Over',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Color(0xff020e28)
                                  : Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(
                          widget.data[0]["live_inning"]["last_ten_overs"]
                              .toString(),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 150,
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
                      : Color(0xff353e54),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.data[0]["batsmen"][0]["name"].toString(),
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Color(0xff020e28)
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Transform.translate(
                            offset: Offset(26, 0),
                            child: Text(
                              widget.data[0]["batsmen"][0]["runs"].toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(18, 0),
                            child: Text(
                              widget.data[0]["batsmen"][0]["balls_faced"]
                                  .toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(18, 0),
                            child: Text(
                              widget.data[0]["batsmen"][0]["fours"].toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(18, 0),
                            child: Text(
                              widget.data[0]["batsmen"][0]["sixes"].toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(18, 0),
                            child: Text(
                              widget.data[0]["batsmen"][0]["strike_rate"]
                                  .toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                      ]),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.data[0]["batsmen"][1]["name"].toString(),
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Color(0xff020e28)
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Transform.translate(
                            offset: Offset(10, 0),
                            child: Text(
                              widget.data[0]["batsmen"][1]["runs"].toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(7, 0),
                            child: Text(
                              widget.data[0]["batsmen"][1]["balls_faced"]
                                  .toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(7, 0),
                            child: Text(
                              widget.data[0]["batsmen"][1]["fours"].toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(7, 0),
                            child: Text(
                              widget.data[0]["batsmen"][0]["sixes"].toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        Transform.translate(
                            offset: Offset(7, 0),
                            child: Text(
                              widget.data[0]["batsmen"][1]["strike_rate"]
                                  .toString(),
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                      ]),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -200.0),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 70,
                width: 390,
                decoration: BoxDecoration(
                  color: controller.mode == 'light'
                      ? Color(0xff1A3A90)
                      : Color(0xff5e6473),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Batsmen',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        'R',
                        style: TextStyle(
                            color: Color(0xff9db5ef),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      'B',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '4s',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '6s',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'S.R',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Transform.translate(
            offset: Offset(0, -70),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 150,
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
                        : Color(0xff353e54),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.data[0]["bowlers"][0]["name"].toString(),
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Transform.translate(
                              offset: Offset(26, 0),
                              child: Text(
                                widget.data[0]["bowlers"][0]["overs"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][0]["runs_conceded"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][0]["wickets"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][0]["maidens"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][0]["econ"].toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                        ]),
                    SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.data[0]["bowlers"][1]["name"].toString(),
                            style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Transform.translate(
                              offset: Offset(26, 0),
                              child: Text(
                                widget.data[0]["bowlers"][1]["overs"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][1]["runs_conceded"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][1]["wickets"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][1]["maidens"]
                                    .toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                          Transform.translate(
                              offset: Offset(18, 0),
                              child: Text(
                                widget.data[0]["bowlers"][1]["econ"].toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              )),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -270.0),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 70,
                width: 390,
                decoration: BoxDecoration(
                  color: controller.mode == 'light'
                      ? Color(0xff1A3A90)
                      : Color(0xff5e6473),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Bowlers',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Text(
                        'O',
                        style: TextStyle(
                            color: Color(0xff9db5ef),
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      'R',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'W',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'M',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'E',
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Colors.white
                              : Color(0xff9db5ef),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]):SizedBox(),
        ),
        
        );
  }
}
