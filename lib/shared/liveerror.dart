import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';

import 'package:today/screens/homee4.dart';

class Liveerror extends StatefulWidget {
  const Liveerror({Key? key}) : super(key: key);

  @override
  State<Liveerror> createState() => _LiveerrorState();
}

class _LiveerrorState extends State<Liveerror> {
  void initState() {
    super.initState();
    getmatch();
  }

  var matchlist = [];

  getmatch() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/matches/?status=3&token=f94a09518bdeb24c299555502fa6bdb6';

    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);

    print(data);

    for (var i = 0; i < data["response"]["items"].length; i++) {
      matchlist.add(data["response"]["items"][i]);
      //print(matchlist.add(data["response"]["items"][i]));

    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:   SingleChildScrollView(
              child: Column(children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: ((context, index) {
                    print(matchlist[index]);

                    return GestureDetector(
                      onTap: () {
                        // print(matchlist[index]);

                        Get.to(Homee5(matchlist[index]));
                      },
                      child: Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Transform.translate(
                                          offset: Offset(0, -20.0),
                                          child: Text(
                                            matchlist[index]["title"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0),
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
                                height: size.height * 0.27,
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
                                          top: 25.0, left: 230),
                                      child: Text(
                                          DateFormat('dd-MM-yyyy')
                                                  .format(DateTime.parse(
                                                      matchlist[index]
                                                          ["date_start_ist"]))
                                                  .toString() +
                                              " | " +
                                              DateFormat('HH:mm')
                                                  .format(DateTime.parse(
                                                      matchlist[index]
                                                          ["date_start_ist"]))
                                                  .toString(),
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
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundImage: NetworkImage(
                                                matchlist[index]["teama"]
                                                    ["logo_url"],

                                                // height: 30,

                                                // width: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12.0),
                                              child: Text(
                                                matchlist[index]["teama"]
                                                    ["short_name"],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12.0),
                                              child: Container(
                                                child: Text(
                                                  matchlist[index]["teama"]
                                                      ["scores_full"],
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
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
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundImage: NetworkImage(
                                                matchlist[index]["teamb"]
                                                    ["logo_url"],

                                                // height: 30,

                                                // width: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 13.0),
                                              child: Text(
                                                matchlist[index]["teamb"]
                                                    ["short_name"],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 13),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12.0),
                                              child: Container(
                                                width: 100,
                                                child: Text(
                                                  matchlist[index]["teamb"]
                                                      ["scores_full"],
                                                 
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 13),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20.0, top: 20),
                                      child: Text(
                                          matchlist[index]["venue"]["name"],
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
                                height: 40,
                                width: 240,
                                decoration: BoxDecoration(
                                    color: Color(0xfffd0001),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  matchlist[index]["live"],
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
                                offset: Offset(0, -260.0),
                                child: Container(
                                  height: 25,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Color(0xfffd0001),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                      child: Text(
                                    matchlist[index]["subtitle"],
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
                    );
                  }),
                  scrollDirection: Axis.vertical,
                  itemCount: matchlist.length,
                )
              ]),
            ),
    );
  }
}
