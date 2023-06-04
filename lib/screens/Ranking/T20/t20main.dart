
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/shared/liveerror.dart';
import 'package:today/shared/result.dart';
import 'package:today/shared/upcoming.dart';

import '../../../modecontroller.dart';
import 'tall.dart';
import 'tbatman.dart';
import 'tbowler.dart';
import 'tteams.dart';


class T20main extends StatefulWidget {
  const T20main({ Key? key }) : super(key: key);

  @override
  State<T20main> createState() => _T20mainState();
}
final controller = Get.put(DarkModeController());
class _T20mainState extends State<T20main> {
  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
  length: 4,
  child: Scaffold(
    backgroundColor: Colors.transparent,

      appBar: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4.0,
        labelColor:  controller.mode == 'light'? Color(0xff06122c) :Colors.white ,
        labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12),
        indicatorColor: Color(0xff8cb3ea),
        tabs: [
          Tab(text: "Batsman",),
          Tab(text: "Bowlers",),
          Tab(text: "All Rounder",),
                  Tab(text: "Teams",),
        ],
      ),
     
    body: TabBarView(
      children: [

     Tbatsman(),
   Tbowler(),
        Tallround(),
                Tteam(),
      ],
    ),
  ),
),
    );
    
  }
}
