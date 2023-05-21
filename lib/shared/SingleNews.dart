import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';

class MyNews extends StatefulWidget {


  @override
  State<MyNews> createState() => _MyNewsState();
}
final controller = Get.put(DarkModeController());

class _MyNewsState extends State<MyNews> {

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold( backgroundColor: Color(0xff020e28),
    body: SingleChildScrollView(
    child:   Column(children: [
     
    SizedBox(height: 25,),
    
    Image.asset('assets/Image1.jpg'),
    
    
    
    Container(
    
    height: 570,
    
    width: double.infinity,
    
    color: controller.mode == 'light' ?Colors.white : Color(0xff333334),
    
    
    
    
    
    child: Column(
    
    children: [
    
          Padding(
    
            padding: const EdgeInsets.only(left:25.0,right: 25,top: 30),
    
            child: Text('James Anderson injury setback, England bowling stocks,Jofra Archer, cricket news',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),fontSize: 16,fontWeight: FontWeight.w500,),),
    
          ),
    
     Padding(
    
     padding: const EdgeInsets.only(left:220.0,top: 15),
    
     child: Text('18 May 2023',style: TextStyle(color:Color.fromARGB(255, 237, 20, 4),fontSize: 15,fontWeight: FontWeight.w400,)),
    
     ),
    
     
    
     Padding(
    
     padding: const EdgeInsets.only(left:25.0,right: 25,top: 30),
    
     child: Text('Mystery surrounds Ashes Legends Injury setback as England bowling crisis deepens\n\n We are less tehn Five week Away form the Ashes but England Already sweating on a number of injury concerns within their deplated bowling cartel Earliar this year England captain Ben stokes declared he wanted an eight-man pace squad available for...[4307 chars]',style: TextStyle(color: controller.mode == 'light'? Color(0xff06122c) :Color(0xffdad6ce), fontSize: 17,fontWeight: FontWeight.w400,)),
    
     )
    
     
    
    ],
    
    ),
    
    
    
    
    
    
    
    ),
    
    
    
    
    
    ]),
    ),
    
    
    
    
    );
  }
}