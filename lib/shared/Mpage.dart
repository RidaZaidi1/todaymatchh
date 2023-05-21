
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';
import 'liveerror.dart';
import 'result.dart';
import 'upcoming.dart';
class Mpage extends StatefulWidget {
  const Mpage({ Key? key }) : super(key: key);

  @override
  State<Mpage> createState() => _MpageState();
}
final controller = Get.put(DarkModeController());
class _MpageState extends State<Mpage> {
  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
  length: 3,
  child: Scaffold(
    backgroundColor: Colors.transparent,

      appBar: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4.0,
        labelColor:  controller.mode == 'light'? Color(0xff06122c) :Colors.white ,
        labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
        indicatorColor: Color(0xff8cb3ea),
        tabs: [
          Tab(text: "Upcoming",),
          Tab(text: "Live",),
          Tab(text: "Result",),
        ],
      ),
     
    body: TabBarView(
      children: [

     Upcomingg(),
   Liveerror(),
        Result(),
      ],
    ),
  ),
),
    );
    
  }
}
