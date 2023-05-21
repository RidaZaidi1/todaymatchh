import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modecontroller.dart';
class Livee extends StatefulWidget {
  const Livee({ Key? key }) : super(key: key);

  @override
  State<Livee> createState() => _LiveeState();
}
final controller = Get.put(DarkModeController());
class _LiveeState extends State<Livee> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.transparent,
body: SingleChildScrollView(
  child:   Column(
  
    children: [
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
height: 200,
width: 390,
 decoration: BoxDecoration(
   boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color:controller.mode == 'light'?Colors.white  : Color(0xff353e52),
 borderRadius: BorderRadius.circular(30)),

child: Column(
  children: [
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
children: [
SizedBox(height: 28,),
Padding(
padding: const EdgeInsets.only(left:20,),
child: Text('Denmark',style: TextStyle(color: controller.mode == 'light'
                                        ? Color(0xff1A3A90): Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),),
),
Padding(
padding: const EdgeInsets.only(left:30.0),
 child: Text('116/3(13)',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ),
],
),
Padding(
padding: const EdgeInsets.only(right:30,top:10),
child: Text('CRR:8.920',style: TextStyle(color: controller.mode == 'light'
                                        ? Color(0xff1A3A90): Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),),
),],),

Padding(
  padding: const EdgeInsets.only(right:25,left:25,top:20),
  child:   Divider(color: controller.mode == 'light'
                                        ? Colors.grey:Colors.white,thickness: 1,),
),  
  
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
children: [
SizedBox(height: 15,),
Padding(
padding: const EdgeInsets.only(left:30,),
child: Text('Partnership',style: TextStyle(color: controller.mode == 'light'
                                        ? Color(0xff1A3A90): Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),),
),
Padding(
padding: const EdgeInsets.only(left:20.0),
 child: Text('29.0(21.0)',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ),
],
),
Column(
  children: [
  Padding(
    padding: const EdgeInsets.only(right:70,top:15),
    child: Text('Last wicket',style: TextStyle(color:controller.mode == 'light'
                                        ? Color(0xff1A3A90):  Color(0xff9db5ef),fontSize:13,fontWeight: FontWeight.w500),),
  ),
  Padding(
    padding: const EdgeInsets.only(right:20.0),
    child: Text('Nicolaj Laegsgaared 49(25)',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500),),
  ),
  ],
),],),],),),
      ),

SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 100,
  
  width: 390,
  
   decoration: BoxDecoration(
     boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color:controller.mode == 'light'?Colors.white  : 
     Color(0xff353e52),
  
   borderRadius: BorderRadius.circular(30)),
  
  child:Column(
  
    children: [
  
  SizedBox(height:13,),
  
  Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
  
  children: [
  
  Padding(
  
    padding: const EdgeInsets.only(left:25),
  
    child:   Text('Last 5 Over',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:13,fontWeight: FontWeight.w500),),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25),
  
    child:   Text('39/1 7.55',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height:25,), 
  
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
  children: [
  
  Padding(
  
    padding: const EdgeInsets.only(left:25),
  
    child:   Text('Last 10 Over',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500),),
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.only(right:25),
  
    child:   Text('94/1 9.10',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize:13,fontWeight: FontWeight.w500),),
  
  ),],),],),),
),
SizedBox(height:20,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 150,
  
  width: 390,
  
  decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color:controller.mode == 'light'?Colors.white  :  Color(0xff353e54),
  
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
  
  child:Column(
  
    children: [
  
      SizedBox(height: 70,),
  
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
      
  
          children: [
  
      
  
        Text('Lucky Malik',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
  
      
  
        Padding(
  
      
  
          padding: const EdgeInsets.only(left:45),
  
      
  
          child: Text('16',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
      
  
        ), 
  
      
  
        Text('12',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),), 
  
      
  
        Text('1',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),), 
  
      
  
        Padding(
  
      
  
          padding: const EdgeInsets.only(left:10.0),
  
      
  
          child: Text('0',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ), 
  
  Text('133.33',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),), 
  
  ]),
  
  SizedBox(height:20),
  
     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
      
  
          children: [
  
      
  
        Text('Saif Ahmed',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
      
  
        Padding(
  
      
  
          padding: const EdgeInsets.only(left:45),
  
      
  
          child: Text('34',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
      
  
        ), 
  
      
  
        Text('29',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w500),), 
  
      
  
        Text('1',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),), 
  
      
  
        Padding(
  
      
  
          padding: const EdgeInsets.only(left:10.0),
  
      
  
          child: Text('1',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
      
  
        ), 
  
      
  
        Text('113.24',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),), 
  
      
  
          ],
  
      
  
        ), 
  
    
  
    
  
    ],
  
  ),
  
  
  
  ),
),
    
 Transform.translate(offset:Offset(0, -200.0),
  
  child:   Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
    
    height: 70,
    
    width: 390,
    
    decoration:BoxDecoration(color: controller.mode == 'light'
                                        ? Color(0xff1A3A90): Color(0xff5e6473),borderRadius: BorderRadius.circular(25),),
    
    child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
    Text('Batsmen',style: TextStyle(color: controller.mode == 'light'? Colors.white :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),),
    Padding(
      padding: const EdgeInsets.only(left:50.0),
      child: Text('R',style: TextStyle(color:Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),),
    ), 
    Text('B',style: TextStyle(color:controller.mode == 'light'? Colors.white :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),), 
    Text('4s',style: TextStyle(color:controller.mode == 'light'? Colors.white :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),), 
    Text('6s',style: TextStyle(color: controller.mode == 'light'? Colors.white :Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),), 
    Text('S.R',style: TextStyle(color:controller.mode == 'light'? Colors.white : Color(0xff9db5ef),fontSize: 13,fontWeight: FontWeight.w500),), 
      ],
    ),
    
    ),
  ),),   
    
    ]
  )
)
   );
  }
}