// ignore_for_file: prefer_const_declarations

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:today/screens/homee3.dart';
import 'package:today/screens/homee4.dart';

import '../modecontroller.dart';
import 'package:http/http.dart' as http;

class Series extends StatefulWidget {
  const Series({Key? key}) : super(key: key);

  @override
  State<Series> createState() => _SeriesState();
}

final controller = Get.put(DarkModeController());

class _SeriesState extends State<Series> {
  void initState() {
    super.initState();
    getSeries();
    print(SeriesList);
  }

  var SeriesList = [];

  getSeries() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/seasons/2023/competitions?token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);

    for (var i = 0; i < data["response"]["items"].length; i++) {
      SeriesList.add(data["response"]["items"][i]);
     

    }
  
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: Offset(0,-40),
      child:      SeriesList.length== 0 ?Center(child: CircularProgressIndicator(
            strokeWidth: 5,
           )):Container(
       
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left:18.0,),
            child: 
            
            Column(
              children: [
         ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  // print(matchlist[index]);
    
                  return Card(
                    elevation: 100,
                    color: Colors.transparent,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0),
                          child: GestureDetector(
                              onTap: () {
                                Get.to( Homee4(SeriesList[index]));
                              },
                              child: Text(
                                "${SeriesList[index]["title"]} 2023",
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff020e28)
                                        : Colors.grey[100],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            
                            Text(
                            
                          DateFormat('dd-MM-yyyy').format(DateTime.parse(SeriesList[index]["datestart"])).toString() + "  to  " + DateFormat('dd-MM-yyyy').format(DateTime.parse(SeriesList[index]["dateend"])).toString(),
                                style: TextStyle(
                                    color: controller.mode == 'light'
                                        ? Color(0xff1A3A90)
                                        : Color(0xff9db5ef),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            Transform.translate(
                               offset: Offset(0,-10),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 10.0, bottom: 20),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: controller.mode == 'light'
                                      ? Color(0xff020e28)
                                      : Color(0xff9db5ef),
                                  size: 17,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                }),
                scrollDirection: Axis.vertical,
                itemCount: SeriesList.length,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
