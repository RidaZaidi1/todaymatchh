import 'package:flutter/material.dart';

class Liveerror extends StatefulWidget {
  const Liveerror({ Key? key }) : super(key: key);

  @override
  State<Liveerror> createState() => _LiveerrorState();
}

class _LiveerrorState extends State<Liveerror> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.transparent,
body: Column(
  children: [
    SizedBox(height: 50,),
    Center(child: Image.asset("assets/calender.png",height: 200,width: 200,)),
       SizedBox(height: 50,),
    Container(

   height:35,

   width: 240,

   decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),

   child: Center(child: Text('Start in 1d 5h 17m 20s',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.w500 ) ,)),

   ),
  ],
),
    );
  }
}