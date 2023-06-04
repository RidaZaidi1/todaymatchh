import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../modecontroller.dart';
class Bowlings extends StatefulWidget {
 // const Bowlings({ Key? key }) : super(key: key);
  var ProfileList;
  Bowlings(this.ProfileList);
  @override
  State<Bowlings> createState() => _BowlingsState();
}
final controller = Get.put(DarkModeController());
class _BowlingsState extends State<Bowlings> {
    void initState() {
    super.initState();
    // print(widget.PlayerProfile);
    getplayerdata();
  }

  var battingProfile=[];


  getplayerdata() async {
      final String apiUrl =
        'https://rest.entitysport.com/v2/players/${widget.ProfileList["pid"]}/stats?token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data["response"]["bowling"]);
    battingProfile.add(data["response"]["bowling"]);
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
 return Scaffold( backgroundColor: Colors.transparent,

body:SingleChildScrollView(
  child:   Column(children: [ 
  
  
  
  
  
  Padding(
    padding: const EdgeInsets.only(top:20.0,left:10,right: 10),
    child: Container(
    
    
    
    height: 560,
    
    
    
    width: 390,
    
    
    
    decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
      color: controller.mode == 'light'?Colors.white:Color(0xff353e52),
    
    
    
    ),
    
   child: Scrollbar(
                  child: battingProfile.length==0?Center(child: CircularProgressIndicator(
          strokeWidth: 5,
         )): SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45,
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Matches',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 115.0),
                                child: Text(battingProfile[0]["test"]["matches"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Text(battingProfile[0]["odi"]["matches"].toString(),
                                    style: TextStyle(
                                      color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(battingProfile[0]["t20i"]["matches"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Inning',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 130.0),
                                child: Text(battingProfile[0]["test"]["innings"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Text(battingProfile[0]["odi"]["innings"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(battingProfile[0]["t20i"]["innings"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Runs',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 135.0),
                                child: Text(battingProfile[0]["test"]["runs"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Text(battingProfile[0]["odi"]["runs"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(battingProfile[0]["t20i"]["runs"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Four',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 145.0),
                                child: Text(battingProfile[0]["test"]["run4"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Text(battingProfile[0]["odi"]["run4"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text('2',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Six',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155.0),
                                child: Text(battingProfile[0]["test"]["run6"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Text(battingProfile[0]["odi"]["run6"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(battingProfile[0]["t20i"]["run6"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Fifties',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 135.0),
                                child: Text(battingProfile[0]["test"]["run50"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Text(battingProfile[0]["odi"]["run50"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(battingProfile[0]["t20i"]["run50"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text('Hundreds',
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 115.0),
                                child: Text(battingProfile[0]["test"]["run100"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45.0),
                                child: Text(battingProfile[0]["odi"]["run100"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(battingProfile[0]["t20i"]["run100"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 390,
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 19.0),
                                child: Text("Higest score",
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 85.0),
                                child: Text(battingProfile[0]["test"]["highest"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 35.0),
                                child: Text(battingProfile[0]["odi"]["highest"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(battingProfile[0]["t20i"]["highest"].toString(),
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ),
  ),   
  
  
  
   
  
  
  
   Transform.translate(offset:Offset(0, -580.0),
  
  
  
     child: Padding(
       padding: const EdgeInsets.only(left:8.0,right: 8),
       child: Container(
  
  
  
       height: 75,
  
  
  
       width: 390,
  
  
  
       decoration:BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff5e6474),borderRadius: BorderRadius.circular(20)),
  
  
  
   
  
  
  
   child: Row(
  
  
  
        children: [
  
  
  
   Padding(
  
  
  
        padding: const EdgeInsets.only(left:20.0),
  
  
  
        child:   Text('Bowling',style:TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
  
  
   ),
  
  
  
   Padding(
  
  
  
        padding: const EdgeInsets.only(left:120.0),
  
  
  
        child:   Text('TEST',style:TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
  
  
   ),
  
  
  
   Padding(
  
  
  
        padding: const EdgeInsets.only(left:20.0),
  
  
  
        child:   Text('ODI',style:TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
  
  
   ),
  
  
  
   Padding(
  
  
  
        padding: const EdgeInsets.only(left:20.0),
  
  
  
        child:   Text('T20',style:TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
  
  
   ),
  
  
  
        ],),
  
  
  
   
  
  
  
   ),
     ),
  
  
  
   ),
  
  
  
      
  
  
  
   
  
  
  
      
  
  
  
      
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ]),
),
    
    
    
    
    
    
    
    );
  }
}