import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/screens/Players/mainplayer.dart';
import 'package:http/http.dart' as http;
import '../../modecontroller.dart';

class Squad2 extends StatefulWidget {
  //const Squad2({Key? key}) : super(key: key);
var PlayerProfile1;
   Squad2(this.PlayerProfile1);
  @override
  State<Squad2> createState() => _Squad2State();
}

final controller = Get.put(DarkModeController());

class _Squad2State extends State<Squad2> {
   void initState() {
    super.initState();
    print("ridass");
    print(widget.PlayerProfile1);
    getSeries();
  }

  var PlayerLists = [];
  getSeries() async {
    
    final String apiUrl =
       
   
   'https://rest.entitysport.com/v2/teams/${widget.PlayerProfile1}/player?token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data["response"]["items"]["players"]["odi"]);
    for (var i = 0;
        i < data["response"]["items"]["players"]["odi"].length;
        i++) {
      PlayerLists.add(data["response"]["items"]["players"]["odi"][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }
    setState(() {});
//     final String apiUrl1 =
//         'https://rest.entitysport.com/v2/iccranks?token=ec471071441bb2ac538a0ff901abd249';
//     final response1 = await http.get(Uri.parse(apiUrl));
//     var data1 = json.decode(response.body);
// print(data1);
    // for (var i = 0; i < data["response"]["items"].length; i++) {
    //   SeriesList.add(data["response"]["items"][i]);
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
      return  Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(children: [
                 
                 
                 
                
                  Container(
                    height: 530,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(8),
          
              itemCount: PlayerLists.length,
                      itemBuilder: ((context, index) {
                        // print(PlayerLists[index]['player']);
                // print(matchlist[index]);

                return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(Mainplayer(  PlayerLists[index]));
                                },
                                child: Container(
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [

Image.asset(
                                          "assets/person.png",
                                          height: 55,
                                        ),
                                                 Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                PlayerLists[index]['title'],
                                                style: TextStyle(
                                                    color: controller.mode ==
                                                            'light'
                                                        ? Color(0xff020e28)
                                                        : Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                              ],
                                            )

                                        
                                          ],
                                        ),
                                        
                                        Column(
                                         
                                          children: [
                                           
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20,top: 10),
                                              child: Text(
                                                PlayerLists[index]['playing_role'],
                                                style: TextStyle(
                                                    color: controller.mode ==
                                                            'light'
                                                        ? Color(0xff1A3A90)
                                                        : Color(0xff9aaed5),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                                                     ],
                                  ),
                );
                
                })
                    ),
                  )
                ]),
              ));
  }
}
