import 'dart:async';

import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modecontroller.dart';
import 'screens/homee4.dart';
class MAtchinfoo extends StatefulWidget {
  //const MAtchinfoo({ Key? key }) : super(key: key);
var SeriesProfile;
MAtchinfoo(this.SeriesProfile);
  @override
  State<MAtchinfoo> createState() => _MAtchinfooState();
}
final controller = Get.put(DarkModeController());
class _MAtchinfooState extends State<MAtchinfoo> {
   void initState() {
    super.initState();
   print(widget.SeriesProfile["cid"]);
        print("ghh");
    getplayerdata();
 getplayerdata1();
  }

  var seriesprofilee=[];
  var seriesprofilee2=[];

  getplayerdata() async {


final birthday = DateTime(2023-08-12);
 final date2 = DateTime.now();
 final difference = date2.difference(birthday).inDays;
print(difference);
         final String apiUrl =
        
   'https://rest.entitysport.com/v2/competitions/${widget.SeriesProfile["cid"]}/matches?token=f94a09518bdeb24c299555502fa6bdb6&per_page=50&&paged=1';
    final response = await http.get(Uri.parse(apiUrl));
    var data2 = json.decode(response.body);
    print('df');
    print(data2);
    for (var i = 0; i < 1; i++) {
    
      seriesprofilee.add(data2["response"]["items"][i]);
     //print(seriesprofilee.add(data["response"]["items"][i]));
      
    }
    setState(() {
      
    });
  }
  getplayerdata1() async {
      
         final String apiUrl1 =
        
   'https://rest.entitysport.com/v2/competitions/${widget.SeriesProfile["cid"]}/matches/?token=f94a09518bdeb24c299555502fa6bdb6&per_page=50&&paged=1';
    final response = await http.get(Uri.parse(apiUrl1));
    var data21 = json.decode(response.body);
    print('df');
    print(data21);
    for (var i = 1; i < data21["response"]["items"].length; i++) {
    
      seriesprofilee2.add(data21["response"]["items"][i]);
     //print(seriesprofilee.add(data["response"]["items"][i]));
      
    }
    setState(() {
      
    });
  }
// void initState(){
//   super.initState();
//   print(widget.SeriesProfile[0]["items"]["cid"]);
// }

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Container(

      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right:8.0),
          child: Column(children: [
          
           seriesprofilee.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  strokeWidth: 5,
                ))
              : GetBuilder<DarkModeController>(
                builder: (controller){ 
                    return  Transform.translate(
              offset: Offset(0,-50),
              child: Container(
                height: 300,
                width: double.infinity,
                child:  seriesprofilee.length==0? Center(child: CircularProgressIndicator(
          strokeWidth: 5,
         )):  ListView.builder(  
                   shrinkWrap: true,
                   itemCount: 1,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                   String? timeReamining =controller.getDateDiff(seriesprofilee[index]["date_start"]);;
                      Timer.periodic(const Duration(seconds: 1), (timer) {
                         timeReamining =
                            controller.getDateDiff(seriesprofilee[index]["date_start"]);
                        setState(() {});
                      });
                       print(seriesprofilee[index]);
                return GestureDetector(
                  onTap: (){
                    // print(seriesprofilee[index]);
                    Get.to(Homee5(seriesprofilee[index]));
                  },
                  child: Transform.translate(
                    offset: Offset(0,-5),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Transform.translate(
                                        offset: Offset(0, -20.0),
                                        child: Text(
                                         widget.SeriesProfile["title"],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
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
                              height: size.height * 0.22,
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
                                        top: 25.0, left: 200),
                                    child: Text(DateFormat('dd-MM-yyyy').format(DateTime.parse(seriesprofilee[index]["date_start_ist"])).toString() + " | " + DateFormat('HH:mm').format(DateTime.parse(seriesprofilee[index]["date_start_ist"])).toString() ,
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
                                             seriesprofilee[index]["teama"]["logo_url"],
                                              // height: 30,
                                              // width: 30,
                                              
                                            ),
                                          ),
                                          Text(
                                            seriesprofilee[index]["teama"]["short_name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          )
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
                                             seriesprofilee[index]["teamb"]["logo_url"],
                                              // height: 30,
                                              // width: 30,
                                              
                                            ),
                                          ),
                                          Text(
                                            seriesprofilee[index]["teamb"]["short_name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, top: 20),
                                    child: Text(seriesprofilee[index]["venue"]["name"],
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
                              height: 35,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xfffd0001),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                               timeReamining!,
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
                              offset: Offset(0, -230.0),
                              child: Container(
                                height: 25,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xfffd0001),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                    child: Text(
                                   seriesprofilee[index]["subtitle"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );


              }
              )
                )
                  
             
                   
                  
             
          
          
         
        ),
      );

                }
              ),
              

        seriesprofilee.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  strokeWidth: 5,
                ))
              : GetBuilder<DarkModeController>(
                builder: (controller){ 
                  
                  return   Transform.translate(
              offset: Offset(0,-40),
              child: Container(
                height: 700,
                width: double.infinity,
                child:  seriesprofilee2.length==0? Center(child: CircularProgressIndicator(
          strokeWidth: 5,
         )):  ListView.builder(  
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context1, index1) {
                 String? timeReamining1 =controller.getDateDiff(seriesprofilee2[index1]["date_start"]);;
                      Timer.periodic(const Duration(seconds: 1), (timer) {
                         timeReamining1 =
                            controller.getDateDiff(seriesprofilee2[index1]["date_start"]);
                        setState(() {});
                      });
                       print(seriesprofilee2[index1]);
                return GestureDetector(
                  onTap: (){
                    // print(seriesprofilee[index]);
                    Get.to(Homee5(seriesprofilee2[index1]));
                  },
                  child: Transform.translate(
                    offset: Offset(0,-5),
                    child: Container(
                      child: Column(
                        children: [
                  
                          Transform.translate(
                            offset: Offset(0, -20.0),
                            child: Container(
                              height: size.height * 0.22,
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
                                        top: 25.0, left: 200),
                                    child: Text(DateFormat('dd-MM-yyyy').format(DateTime.parse(seriesprofilee2[index1]["date_start_ist"])).toString()+ " | " + DateFormat('HH:mm').format(DateTime.parse(seriesprofilee2[index1]["date_start_ist"])).toString() ,
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
                                             seriesprofilee2[index1]["teama"]["logo_url"],
                                              // height: 30,
                                              // width: 30,
                                              
                                            ),
                                          ),
                                          Text(
                                            seriesprofilee2[index1]["teama"]["short_name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14),
                                          )
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
                                             seriesprofilee2[index1]["teamb"]["logo_url"],
                                              // height: 30,
                                              // width: 30,
                                              
                                            ),
                                          ),
                                          Text(
                                            seriesprofilee2[index1]["teamb"]["short_name"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, top: 20),
                                    child: Text(seriesprofilee2[index1]["venue"]["name"],
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
                              height: 35,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xfffd0001),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                    
                            timeReamining1!,
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
                              offset: Offset(0, -210.0),
                              child: Container(
                                height: 25,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xfffd0001),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                    child: Text(
                                   seriesprofilee2[index1]["subtitle"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );


              }
              )
                )
                  
             
                   
                  
             
          
          
         
        ),
      );
                }
              ),
                  
   ] ))));
  }
}