import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../modecontroller.dart';

class MyNews extends StatefulWidget {

 var NewsProfile;

   MyNews(this.NewsProfile);
  @override
  State<MyNews> createState() => _MyNewsState();
}
final controller = Get.put(DarkModeController());

class _MyNewsState extends State<MyNews> {
   void initState() {
    super.initState();
    // print(widget.PlayerProfile);
    print("rida");
    
    
  }



  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold( backgroundColor: Color(0xff020e28),
    body: SingleChildScrollView(
    child:   Column(children: [
     
    SizedBox(height: 25,),
    
    Image.network(widget.NewsProfile["urlToImage"]),
    
    
    
    Container(
    
    height: 570,
    
    width: double.infinity,
    
    color: controller.mode == 'light' ?Colors.white : Color(0xff333334),
    
    
    
    
    
    child: Column(
    
    children: [
    
          Padding(
    
            padding: const EdgeInsets.only(left:25.0,right: 25,top: 30),
    
            child: Text(widget.NewsProfile["title"],style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),fontSize: 16,fontWeight: FontWeight.w500,),),
    
          ),
    
     Padding(
    
     padding: const EdgeInsets.only(left:220.0,top: 15),
    
     child: Text( DateFormat('dd-MM-yyyy').format(DateTime.parse(widget.NewsProfile["publishedAt"])).toString()   ,style: TextStyle(color:Color.fromARGB(255, 237, 20, 4),fontSize: 15,fontWeight: FontWeight.w400,)),
    
     ),
    
     
    
     Padding(
    
     padding: const EdgeInsets.only(left:25.0,right: 25,top: 30),
    
     child: Text(widget.NewsProfile["content"],style: TextStyle(color: controller.mode == 'light'? Color(0xff06122c) :Color(0xffdad6ce), fontSize: 17,fontWeight: FontWeight.w400,)),
    
     )
    
     
    
    ],
    
    ),
    
    
    
    
    
    
    
    ),
    
    
    
    
    
    ]),
    ),
    
    
    
    
    );
  }
}