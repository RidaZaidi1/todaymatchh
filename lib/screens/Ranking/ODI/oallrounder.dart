import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../../modecontroller.dart';
import 'package:get/get.dart';

class Oallround extends StatefulWidget {
  const Oallround({Key? key}) : super(key: key);

  @override
  State<Oallround> createState() => _OallroundState();
}

final controller = Get.put(DarkModeController());

class _OallroundState extends State<Oallround> {
  void initState() {
    super.initState();
    getSeries();
  }

  var OdiLists = [];
  getSeries() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/iccranks?token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data["response"]["ranks"]['all-rounders']['odis']);
    for (var i = 0;
        i < data["response"]["ranks"]['all-rounders']['odis'].length;
        i++) {
      OdiLists.add(data["response"]["ranks"]['all-rounders']['odis'][i]);
      // data["response"]["ranks"]['batsmen']['odis'][i];
    }
    setState(() {});

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text("Rank",
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Color(0xff1A3A90)
                              : Color(0xff9db5ef),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 170.0),
                  child: Text("Player",
                      style: TextStyle(
                          color: controller.mode == 'light'
                              ? Color(0xff1A3A90)
                              : Color(0xff9db5ef),
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
                Text("Rating",
                    style: TextStyle(
                        color: controller.mode == 'light'
                            ? Color(0xff1A3A90)
                            : Color(0xff9db5ef),
                        fontSize: 15,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 5),
            child: Divider(
              color: controller.mode == 'light'
                  ? Color(0xff1A3A90)
                  : Color(0xff9db5ef),
              thickness: 5,
            ),
          ),
         
        Container(
                    height: 610,
                    width: double.infinity,
                    child:OdiLists.length== 0 ?Center(child: CircularProgressIndicator(
          strokeWidth: 5,
         )): ListView.builder(
                      scrollDirection: Axis.vertical,
       
          
              itemCount: OdiLists.length,
                      itemBuilder: ((context, index) {
                        print(OdiLists[index]['player']);
                // print(matchlist[index]);
                return Container(
                  
                                padding: const EdgeInsets.all(5.0),
                                 child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                      
                            children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                     Transform.translate(
                offset: Offset(-10,0),
                child: Container(
                  width: 20,
                  child: Text(  OdiLists[index]['rank'],
                      style: TextStyle(
                          color: controller.mode == 'light'
                                ? Color(0xff020e28)
                                : Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Transform.translate(
                offset: Offset(-17,0),
                child: Container(
                  width: 150,
                  child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(OdiLists[index]['player'],
                          style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff020e28)
                                    : Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500)),
                      Text(OdiLists[index]['team'],
                          style: TextStyle(
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff9db5ef),
                                fontSize: 13,
                                fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
              Container(
                width: 30,
                child: Text(OdiLists[index]['rating'],
                    style: TextStyle(
                        color: controller.mode == 'light'
                            ? Color(0xff020e28)
                            : Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          ),
                             ),
                               Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 10),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
                            ]
                                 )
                  );
                      }
                      )
                    )
        )
        ]),
      ),
    );
  }
}
