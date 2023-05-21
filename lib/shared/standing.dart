import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';

class Standing extends StatefulWidget {
  const Standing({ Key? key }) : super(key: key);

  @override
  State<Standing> createState() => _StandingState();
}
final controller = Get.put(DarkModeController());
class _StandingState extends State<Standing> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
backgroundColor:Colors.transparent,
body: Column(
  children: [
    SizedBox(height: 50,),
    Center(child: Image.asset("assets/standing.png",height: 200,width: 200,)),
       SizedBox(height: 50,),
    Container(

   height:35,
width:280,


   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(10)),

   child: Center(child: Text('No standings available for this series',style:TextStyle(color: Colors.white,fontSize: 14,fontWeight:FontWeight.w500 ) ,)),

   ),
   SizedBox(height: 50,),
   Container(
    height: 60,
    width: 130,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color:  controller.mode == 'light'
                                    ? Color(0xff1A3A90):Color(0xff8cb3ea)
    ),
    child: Center(child: Text("Reload",style:TextStyle(color: controller.mode == 'light'
                                  ?Colors.white:Color(0xff020e28),fontSize: 20,fontWeight:FontWeight.w500 ) ,)),
   )
  ],
),
    );
  }
}