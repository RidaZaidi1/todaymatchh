import 'dart:convert';

import 'package:flutter/material.dart';
import '../../modecontroller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Profilee extends StatefulWidget {
  // const Profilee({ Key? key }) : super(key: key);
  var PlayerProfile;
  Profilee(this.PlayerProfile);

  @override
  State<Profilee> createState() => _ProfileeState();
}

final controller = Get.put(DarkModeController());

class _ProfileeState extends State<Profilee> {
  void initState() {
    super.initState();
     //print(widget.PlayerProfile);
    getplayerdata();
  }

  var playerprofile=[];

bool play=true;

  getplayerdata() async {
      final String apiUrl =
        'https://rest.entitysport.com/v2/players/${widget.PlayerProfile["pid"]}?token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data);
    playerprofile.add(data["response"]["player"]);
    setState(() {
      
    });
    if( widget.PlayerProfile["player"] !=null){
      play = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            child:
            playerprofile.length==0?Container():
             Column(
              children: [
                Image.asset(
                  'assets/person.png',
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    !play? widget.PlayerProfile["player"]: playerprofile[0]["title"]
                   ,
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Color(0xff020e28)
                              : Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353c50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text( playerprofile[0]["nationality"],
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff020e28)
                                            : Color(0xfff3f1ee),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -100.0),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff97b6e3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text('Country',
                                      style: TextStyle(
                                          color: Color(0xfff3f1ee),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353c50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(playerprofile[0]["playing_role"],
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff020e28)
                                            : Color(0xfff3f1ee),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -100.0),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff97b6e3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text('playing_role',
                                      style: TextStyle(
                                          color: Color(0xfff3f1ee),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353c50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(playerprofile[0]["batting_style"],
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff020e28)
                                            : Color(0xfff3f1ee),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -100.0),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff97b6e3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text('Batting Style',
                                      style: TextStyle(
                                          color: Color(0xfff3f1ee),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353c50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(playerprofile[0]["bowling_style"],
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff020e28)
                                            : Color(0xfff3f1ee),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -100.0),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff97b6e3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text('Bowling Style',
                                      style: TextStyle(
                                          color: Color(0xfff3f1ee),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353c50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(playerprofile[0]["birthdate"],
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff020e28)
                                            : Color(0xfff3f1ee),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -100.0),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff97b6e3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text('Birthdate',
                                      style: TextStyle(
                                          color: Color(0xfff3f1ee),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff353c50),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(playerprofile[0]["fantasy_player_rating"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff020e28)
                                            : Color(0xfff3f1ee),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -100.0),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff97b6e3),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text('Player_Rating',
                                      style: TextStyle(
                                          color: Color(0xfff3f1ee),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
