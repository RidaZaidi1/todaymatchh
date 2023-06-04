import 'package:flutter/material.dart';




class Liveerror1 extends StatefulWidget {
  //const Liveerror1({ Key? key }) : super(key: key);
  var data;
  Liveerror1(this.data);
  @override
  State<Liveerror1> createState() => _Liveerror1State();
}

class _Liveerror1State extends State<Liveerror1> {
    
  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Scaffold(
backgroundColor: Colors.transparent,
body:  SingleChildScrollView(
  child:   Column(
  
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
)
    );
  }
}