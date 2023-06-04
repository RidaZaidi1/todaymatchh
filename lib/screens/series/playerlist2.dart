import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:today/screens/Players/mainplayer.dart';
import '../../modecontroller.dart';


class Playerslist2 extends StatefulWidget {
    var PlayerProfile1;
   Playerslist2(this.PlayerProfile1);
  @override
  State<Playerslist2> createState() => _Playerslist2State();
}

final controller = Get.put(DarkModeController());

class _Playerslist2State extends State<Playerslist2> {
  void initState() {
    super.initState();
    print("ridass");
    print(widget.PlayerProfile1["tid"]);
    getSeries();
  }

  var PlayerLists = [];
  getSeries() async {
    
    final String apiUrl =
       
   
   'https://rest.entitysport.com/v2/teams/${widget.PlayerProfile1["tid"].toString()}/player?token=f94a09518bdeb24c299555502fa6bdb6';
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
    return Scaffold(
        backgroundColor: Color(0xff020e28),
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(controller.mode == 'light'
                        ? "assets/backgroundlight.jpg"
                        : "assets/background.jpg"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: 
              
              SingleChildScrollView(
                child: 
                
                
                Column(children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: controller.mode == 'light'
                            ? Color(0xff1A3A90)
                            : Color(0xff373e52),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                        child: Text(
                      'Players',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6.0,
                            offset: Offset(0.0, 0.2))
                      ],
                    ),
                    child: TextField(
                      cursorColor: Color(0xff020e28),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search Player...',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 154, 150, 150),
                            fontSize: 16),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff020e28),
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  Container(
                    height: 610,
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
              ),
            )));
  }
}
  