import 'package:flutter/material.dart';
import '../../../modecontroller.dart';
import 'package:get/get.dart';
class Oteam extends StatefulWidget {
  const Oteam({ Key? key }) : super(key: key);

  @override
  State<Oteam> createState() => _OteamState();
}
final controller = Get.put(DarkModeController());
class _OteamState extends State<Oteam> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(  backgroundColor: Colors.transparent,

body:SingleChildScrollView(scrollDirection: Axis.vertical,
  child:   Column(children: [ 
  
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Padding(
padding: const EdgeInsets.only(right:10.0),
child: Text("Rank",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),
),
Padding(
padding: const EdgeInsets.only(right:130.0),
child: Text("Player",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),
),
Text("Rating",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),
Text("point",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize:14,fontWeight: FontWeight.w600)),

],),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 10),
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
padding: const EdgeInsets.only(right:90.0),
child: Text('Australia',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('118',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('2714',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 15),
child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
    ),
SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Padding(
 padding: const EdgeInsets.only(right:20.0),
child: Text('2',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(right:90.0),
child: Text('Pakistan',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('116',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('2316',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
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
padding: const EdgeInsets.only(right:95.0),
child: Text('India',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 40.0),
child: Text('115',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('3807',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 15),
child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
    ),  
  
SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Padding(
 padding: const EdgeInsets.only(right:20.0),
child: Text('4',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(right:80.0),
child: Text('Newzland',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('104',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('2806',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
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
padding: const EdgeInsets.only(right:90.0),
child: Text('England',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('101',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('2426',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
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
padding: const EdgeInsets.only(right:60.0),
child: Text('South AFrica',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('101',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('1310',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 15),
child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
    ),

SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Padding(
 padding: const EdgeInsets.only(right:20.0),
child: Text('7',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(right:70.0),
child: Text('Bangladesh',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(left: 15.0),
child: Text('97',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('2236',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 15),
child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
    ),

SizedBox(height: 20,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Padding(
 padding: const EdgeInsets.only(right:20.0),
child: Text('8',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(right:90.0),
child: Text('Afganistan',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Padding(
padding: const EdgeInsets.only(right: 7.0),
child: Text('88',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
),
Text('878',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500)),
],),
Padding(
padding: const EdgeInsets.only(right:25,left:25,top: 15),
child:   Divider(color:Color(0xff9db5ef),thickness: 1,),
    ),








 ]),
),






);
  }
}