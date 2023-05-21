import 'package:flutter/material.dart';
import 'package:today/screens/Squads/mainsquad.dart';
import 'package:get/get.dart';
import '../modecontroller.dart';
class Infoo extends StatefulWidget {
  const Infoo({ Key? key }) : super(key: key);

  @override
  State<Infoo> createState() => _InfooState();
}
final controller = Get.put(DarkModeController());
class _InfooState extends State<Infoo> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.transparent,
body: SingleChildScrollView(
  child:   Column(
  
    children: [
      SizedBox(height: 30,),
  Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
height: 430,
width: 380,
decoration: BoxDecoration(
      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'?Colors.white  :Color(0xff353e52),borderRadius: BorderRadius.circular(30)),

child:Column(
    children: [
      SizedBox(height: 55,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Match',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:110.0,),
child: Text('Only Test,Test',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Competition',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:80.0,),
child: Text('Ireland tour of\nEnglandOnly Test',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Date Time',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:75.0,),
child: Text('01 jun 2023|15:00',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Vanue',style: TextStyle(color:controller.mode == 'light'? Color(0xff1A3A90) : Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:130.0,),
child: Text('Lord,s',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Vanue location',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:120.0,),
child: Text('London',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Umpires',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:70.0,),
child: Text('No Data Available',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Referee',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:70.0,),
child: Text('No Data Available',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
SizedBox(height: 30,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left:30.0),
child: Text('Toss',style: TextStyle(color:controller.mode == 'light'? Color(0xff1A3A90) : Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w800),),
),
Padding(
padding: const EdgeInsets.only(right:70.0,),
child: Text('No Data Available',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w800),),
),],),
],),),
  ),
Transform.translate(offset:Offset(0, -470.0),
child:   Container(
height: 47,
width: 250,
decoration:BoxDecoration(color: Color.fromARGB(255, 238, 20, 20),borderRadius: BorderRadius.circular(10),),
child: Center(child:Text('Scheduled for 1 jun 2023|15:00',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w800),)),
),),  
  
 Padding(
   padding: const EdgeInsets.only(right:250),
   child: Text('Playing 11',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 16,fontWeight: FontWeight.w600),),
 ),
  
SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 150,
  
  width: 380,
  
  decoration: BoxDecoration(
     boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
    
    
    
    
    color: controller.mode == 'light'?Colors.white  :Color(0xff353e52),borderRadius: BorderRadius.circular(30)),
  
  
  
  child: Column(
  
    children: [
  
  SizedBox(height:15 ,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  children: [
  
  Padding(
  
    padding: const EdgeInsets.only(left:10.0),
  
    child:   Image.asset('assets/ireland.png',height: 30,),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:90),
  
    child:   Text('Denmark',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color.fromARGB(255, 249, 249, 251),fontSize: 15,fontWeight: FontWeight.w600)),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(left:40.0),
  
    child:   Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size: 20,),
  
  )
  
  ],),
  
  
  
  Padding(
  
    padding: const EdgeInsets.only(left:25,right:25,top:20),
  
    child:   Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,),
  
  ),
  
    
  
  SizedBox(height:15 ,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  children: [
  
  Padding(
  
    padding: const EdgeInsets.only(left:10.0),
  
    child:   Image.asset('assets/ban.png',height: 30,),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:90),
  
    child:   Text('Norway',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color.fromARGB(255, 249, 249, 251),fontSize: 15,fontWeight: FontWeight.w600)),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(left:40.0),
  
    child:   Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size: 30,),
  
  )
  
  ],),],),),
),  


Padding(
   padding: const EdgeInsets.only(right:250,top: 30),
   child: Text('Squads',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 16,fontWeight: FontWeight.w600),),
 ),
  
SizedBox(height: 15,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 150,
  
  width: 380,
  
  decoration: BoxDecoration(
     boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
    
    
    
    color: controller.mode == 'light'?Colors.white  :Color(0xff353e52),borderRadius: BorderRadius.circular(30)),
  
  child: Column(
  
    children: [
  
  SizedBox(height:20 ,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  children: [
  
  Padding(
  
    padding: const EdgeInsets.only(left:10.0),
  
    child:   Image.asset('assets/ireland.png',height: 30,),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:90),
  
    child:   GestureDetector(
      onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Squadmain()));
      },
      child: Text('Denmark',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color.fromARGB(255, 249, 249, 251),fontSize: 15,fontWeight: FontWeight.w600))),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(left:40.0),
  
    child:   Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size: 20,),
  
  )
  
  ],),
  
  
  
  Padding(
  
    padding: const EdgeInsets.only(left:25,right:25,top:20),
  
    child:   Divider(color:controller.mode == 'light'? Colors.grey : Colors.white,thickness: 1,),
  
  ),
  
    
  
  SizedBox(height:15 ,),
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
  children: [
  
  Padding(
  
    padding: const EdgeInsets.only(left:10.0),
  
    child:   Image.asset('assets/ban.png',height: 30,),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:90),
  
    child:   Text('Norway',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Color.fromARGB(255, 249, 249, 251),fontSize: 15,fontWeight: FontWeight.w600)),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(left:40.0),
  
    child:   Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size: 20,),
  
  )
  
  ],),
  
  ]),
  
  ),
),
      
  
    ],
  
  ),
),
   );
  }
}