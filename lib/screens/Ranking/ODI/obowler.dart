import 'package:flutter/material.dart';
import '../../../modecontroller.dart';
import 'package:get/get.dart';
class Obowler extends StatefulWidget {
  const Obowler({ Key? key }) : super(key: key);

  @override
  State<Obowler> createState() => _ObowlerState();
}
final controller = Get.put(DarkModeController());
class _ObowlerState extends State<Obowler> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(  backgroundColor: Colors.transparent,

body:SingleChildScrollView(scrollDirection: Axis.vertical,
  child:   Column(children: [ 


Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  children: [
  
  Padding(
  
  padding: const EdgeInsets.only(right:10.0),
  
  child: Text("Rank",style:TextStyle(color:controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),
  
  ),
  
  Padding(
  
  padding: const EdgeInsets.only(right:180.0),
  
  child: Text("Player",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),
  
  ),
  
  Text("Rating",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),
  
  ],),
),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 5),
child:   Divider(color:controller.mode == 'light'
                                    ? Color(0xff1A3A90):Color(0xff9db5ef),thickness: 5,),
),
  
SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Padding(
 padding: const EdgeInsets.only(right:20.0),
child: Text('1',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(right:110.0),
child: Column(
children: [
Text('Babar Azam',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
Padding(
padding: const EdgeInsets.only(right:40.0),
child: Text('PAK',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
),
],),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('886',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),],),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  SizedBox(height: 20,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(right:20.0),
  
            child: Text('2',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
          ),
  
     Padding(
  
       padding: const EdgeInsets.only(right:95.0),
  
       child: Column(
  
         children: [
  
           Text('Fakhar zaman',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
        Padding(
  
          padding: const EdgeInsets.only(right:40.0),
  
          child: Text('PAK',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
  
        ),
  
         ],
  
       ),
  
     ),
  
     Padding(
  
       padding: const EdgeInsets.only(left: 15.0),
  
       child: Text('745',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
     ),
  
    ],
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  SizedBox(height: 20,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(right:20.0),
  
            child: Text('3',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
          ),
  
     Padding(
  
       padding: const EdgeInsets.only(right:110.0),
  
       child: Column(
  
         children: [
  
           Text('Imam ul haq',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
        Padding(
  
          padding: const EdgeInsets.only(right:20.0),
  
          child: Text('PAK',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
  
        ),
  
         ],
  
       ),
  
     ),
  
     Padding(
  
       padding: const EdgeInsets.only(left: 15.0),
  
       child: Text('755',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
     ),
  
    ],
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  SizedBox(height: 20,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(right:20.0),
  
            child: Text('4',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
          ),
  
     Padding(
  
       padding: const EdgeInsets.only(right:100.0),
  
       child: Column(
  
         children: [
  
           Text('Shubman Gill',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
        Padding(
  
          padding: const EdgeInsets.only(right:40.0),
  
          child: Text('IND',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
  
        ),
  
         ],
  
       ),
  
     ),
  
     Padding(
  
       padding: const EdgeInsets.only(left: 15.0),
  
       child: Text('738',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
     ),
  
    ],
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  SizedBox(height: 20,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(right:20.0),
  
            child: Text('5',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
          ),
  
     Padding(
  
       padding: const EdgeInsets.only(right:130.0),
  
       child: Column(
  
         children: [
  
           Text('Rassie van',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
        Padding(
  
          padding: const EdgeInsets.only(right:40.0),
  
          child: Text('SA',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
  
        ),
  
         ],
  
       ),
  
     ),
  
     Padding(
  
       padding: const EdgeInsets.only(left: 15.0),
  
       child: Text('777',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
     ),
  
    ],
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  SizedBox(height: 20,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(right:20.0),
  
            child: Text('6',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
          ),
  
     Padding(
  
       padding: const EdgeInsets.only(right:110.0),
  
       child: Column(
  
         children: [
  
           Text('David Warner',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
        Padding(
  
          padding: const EdgeInsets.only(right:50.0),
  
          child: Text('AUS',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
  
        ),
  
         ],
  
       ),
  
     ),
  
     Padding(
  
       padding: const EdgeInsets.only(left: 15.0),
  
       child: Text('726',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
     ),
  
    ],
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  
  
  SizedBox(height: 20,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(right:20.0),
  
            child: Text('7',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
          ),
  
     Padding(
  
       padding: const EdgeInsets.only(right:120.0),
  
       child: Column(
  
         children: [
  
           Text('virat kholi',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
        Padding(
  
          padding: const EdgeInsets.only(right:20.0),
  
          child: Text('IND',style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500)),
  
        ),
  
         ],
  
       ),
  
     ),
  
     Padding(
  
       padding: const EdgeInsets.only(left: 15.0),
  
       child: Text('479',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
  
     ),
  
    ],
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25,left:25,top: 15),
  
    child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ]),
),




















);
  }
}