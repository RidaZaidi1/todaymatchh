import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';

class Team extends StatefulWidget {
  const Team({ Key? key }) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}
final controller = Get.put(DarkModeController());
class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
backgroundColor: Colors.transparent,
body: Column(
  children: [
        SizedBox(height:35),
Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Container(
  
  height: 150,
  
  width: 400,
  
  decoration: BoxDecoration(
     boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
    color:controller.mode == 'light'
                                  ?Colors.white: Color(0xff373e52),borderRadius: BorderRadius.circular(30) ),

child: Column(
  children: [
    SizedBox(height:20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
    Column(
      children: [
        
 Row(
   children: [
      Padding(
             padding: const EdgeInsets.only(left:20,),
        child: Image.asset("assets/ireland.png",height: 20,width: 30,),
      ),
     Padding(
        
          padding: const EdgeInsets.only(left:10,),
        
          child:   Text('Ireland',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:16,fontWeight: FontWeight.w500)),
        
        ),
   ],
 ),
      ],
    ),
        Column(
      children: [

      ],
    ),
   
    
    Padding(
    
      padding: const EdgeInsets.only(right:23),
    
      child:   Icon(Icons.arrow_forward_ios,color:  controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),size: 20,),
    
    ),
    
      ],
    
    ),
      SizedBox(height:20),
    Padding(
      padding: const EdgeInsets.only(left:25.0,right: 25.0),
      child: Divider(color: Colors.grey,thickness: 1,),
    ),
  SizedBox(height: 10,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
    Column(
      children: [
        
 Row(
   children: [
      Padding(
             padding: const EdgeInsets.only(left:20,),
        child: Image.asset("assets/ban.png",height: 20,width: 30,),
      ),
     Padding(
        
          padding: const EdgeInsets.only(left:10,),
        
          child:   Text('Bangladesh',style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:16,fontWeight: FontWeight.w500)),
        
        ),
   ],
 ),
      ],
    ),
        Column(
      children: [

      ],
    ),
   
    
    Padding(
    
      padding: const EdgeInsets.only(right:23),
    
      child:   Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) : Color(0xff9aaed5),size: 20,),
    
    ),
    
      ],
    
    ),
]),
 ),
),

  

  ]
)
 );
  }
}