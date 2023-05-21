import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modecontroller.dart';
class Commentary extends StatefulWidget {
  const Commentary({ Key? key }) : super(key: key);

  @override
  State<Commentary> createState() => _CommentaryState();
}
final controller = Get.put(DarkModeController());
class _CommentaryState extends State<Commentary> {
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
height: 330,
width: 390,
decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'
                                    ? Color(0xff1A3A90) : Color(0xff536373),
borderRadius: BorderRadius.circular(35)),

child:Column(
  children: [
Row(
children: [
SizedBox(height: 60,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('End of Over 14',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:90),
   child: Text('Denmark 116/3',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
 ), 
],),

Padding(
  padding: const EdgeInsets.only(left:25.0,right:25),
  child:   Divider(color: Colors.white,thickness: 1,),
),  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Saif Ahmed',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:160),
   child: Text('34(29)',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),  
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Lucky Malik',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:160),
   child: Text('16(12)',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Raaz muhammad',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:120),
   child: Text('3-0-28-1',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Peter Gallagher',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:130),
   child: Text('4-0-31-1',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
Padding(
  padding: const EdgeInsets.only(left:25.0,right:25),
  child:   Divider(color: Colors.white,thickness: 1,),
),   
  
 Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Total Run',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:200),
   child: Text('10',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),
],),),
      ),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 250,
  
  width: 390,
  
  decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'?Colors.white  : Color(0xff353e52),borderRadius: BorderRadius.circular(35)),
  
  child:Column(
  
    children: [
  
      SizedBox(height: 30,),
  
  Row(
  
  children: [
  
    
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.6',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,1 Run,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
   SizedBox(height:40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.5',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,Four,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height: 40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.4',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,2 Run,',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height: 40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.3',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,six,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],), 
  
   
  
   
  
   
  
    ],
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
),
Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
height: 330,
width: 390,
decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'
                                    ? Color(0xff1A3A90) : Color(0xff536373),
borderRadius: BorderRadius.circular(35)),

child:Column(
  children: [
Row(
children: [
SizedBox(height: 60,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('End of Over 14',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:90),
   child: Text('Denmark 116/3',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
 ), 
],),

Padding(
  padding: const EdgeInsets.only(left:25.0,right:25),
  child:   Divider(color: Colors.white,thickness: 1,),
),  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Saif Ahmed',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:160),
   child: Text('34(29)',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),  
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Lucky Malik',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:160),
   child: Text('16(12)',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Raaz muhammad',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:120),
   child: Text('3-0-28-1',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Peter Gallagher',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:130),
   child: Text('4-0-31-1',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
Padding(
  padding: const EdgeInsets.only(left:25.0,right:25),
  child:   Divider(color: Colors.white,thickness: 1,),
),   
  
 Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Total Run',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:200),
   child: Text('10',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),
],),),
      ),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 250,
  
  width: 390,
  
  decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'?Colors.white  : Color(0xff353e52),borderRadius: BorderRadius.circular(35)),
  
  child:Column(
  
    children: [
  
      SizedBox(height: 30,),
  
  Row(
  
  children: [
  
    
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.6',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,1 Run,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
   SizedBox(height:40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.5',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,Four,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height: 40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.4',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,2 Run,',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height: 40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.3',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,six,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],), 
  
   
  
   
  
   
  
    ],
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
),
Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
height: 330,
width: 390,
decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'
                                    ? Color(0xff1A3A90) : Color(0xff536373),
borderRadius: BorderRadius.circular(35)),

child:Column(
  children: [
Row(
children: [
SizedBox(height: 60,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('End of Over 14',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:90),
   child: Text('Denmark 116/3',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
 ), 
],),

Padding(
  padding: const EdgeInsets.only(left:25.0,right:25),
  child:   Divider(color: Colors.white,thickness: 1,),
),  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Saif Ahmed',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:160),
   child: Text('34(29)',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),  
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Lucky Malik',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:160),
   child: Text('16(12)',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Raaz muhammad',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:120),
   child: Text('3-0-28-1',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
  
Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Peter Gallagher',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:130),
   child: Text('4-0-31-1',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),   
Padding(
  padding: const EdgeInsets.only(left:25.0,right:25),
  child:   Divider(color: Colors.white,thickness: 1,),
),   
  
 Row(
children: [
SizedBox(height: 45,),
Padding(
  padding: const EdgeInsets.only(left:30.0),
  child:   Text('Total Run',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
),
 Padding(
   padding: const EdgeInsets.only(left:200),
   child: Text('10',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
 ), 
],),
],),),
      ),
SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Container(
  
  height: 250,
  
  width: 390,
  
  decoration: BoxDecoration( boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'?Colors.white  : Color(0xff353e52),borderRadius: BorderRadius.circular(35)),
  
  child:Column(
  
    children: [
  
      SizedBox(height: 30,),
  
  Row(
  
  children: [
  
    
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.6',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,1 Run,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
   SizedBox(height:40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.5',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,Four,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height: 40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.4',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,2 Run,',style: TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],),
  
  SizedBox(height: 40,),
  
  Row(
  
  children: [
  
   Padding(
  
  padding: const EdgeInsets.only(left:13.0),
  
   child: Text('12.3',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
   ),
  
  Padding(
  
  padding: const EdgeInsets.only(left:25.0),
  
  child: Text('Raaz muhammad to Lucky Malik,six,',style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
  
  ),
  
  ],), 
  
   
  
   
  
   
  
    ],
  
  ),
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ),
),
    ]
  )
)
 );
  }
}