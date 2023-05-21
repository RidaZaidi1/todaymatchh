import 'package:flutter/material.dart';
import '../../modecontroller.dart';
import 'package:get/get.dart';
class Profilee extends StatefulWidget {
  const Profilee({ Key? key }) : super(key: key);

  @override
  State<Profilee> createState() => _ProfileeState();
}
final controller = Get.put(DarkModeController());
class _ProfileeState extends State<Profilee> {
  @override
  Widget build(BuildContext context) {
       Size size = MediaQuery.of(context).size;
    return Scaffold( backgroundColor: Colors.transparent,

body:Column(children: [ 



SingleChildScrollView(
  child: Column(
    children: [
      Image.asset('assets/person.png',height: 120,),
      Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: Text('Brian Vitori',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff676774),fontSize:16,fontWeight: FontWeight.w600)),
      ),
      SizedBox(height: 30,),
      Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
        Container(
          child: Column(
            children: [
              
Container(
  
height: 80,
width: 150,
decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'? Colors.white:Color(0xff353c50),borderRadius: BorderRadius.circular(20)),
child: Center(child: Text('Zimbabwe',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xfff3f1ee),fontSize:18,fontWeight: FontWeight.w600))),
  ),
Transform.translate(offset: Offset(0, -100.0),
child:   Container(
height:35 ,
width: 110,
decoration: BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff97b6e3),borderRadius: BorderRadius.circular(10)),
child: Center(child: Text('Country',style:TextStyle(color: Color(0xfff3f1ee),fontSize:16,fontWeight: FontWeight.w600))),
),),
            ],
          ),
          
        ),
               Container(
          child: Column(
            children: [
              
Container(
  
height: 80,
width: 150,
decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'? Colors.white:Color(0xff353c50),borderRadius: BorderRadius.circular(20)),
child: Center(child: Text('Zimbabwe',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xfff3f1ee),fontSize:18,fontWeight: FontWeight.w600))),
  ),
Transform.translate(offset: Offset(0, -100.0),
child:   Container(
height:35 ,
width: 110,
decoration: BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff97b6e3),borderRadius: BorderRadius.circular(10)),
child: Center(child: Text('Country',style:TextStyle(color: Color(0xfff3f1ee),fontSize:16,fontWeight: FontWeight.w600))),
),),
            ],
          ),
          
        ),
        
      ],),
     Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
        Container(
          child: Column(
            children: [
              
Container(
  
height: 80,
width: 150,
decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'? Colors.white:Color(0xff353c50),borderRadius: BorderRadius.circular(20)),
child: Center(child: Text('Zimbabwe',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xfff3f1ee),fontSize:18,fontWeight: FontWeight.w600))),
  ),
Transform.translate(offset: Offset(0, -100.0),
child:   Container(
height:35 ,
width: 110,
decoration: BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff97b6e3),borderRadius: BorderRadius.circular(10)),
child: Center(child: Text('Country',style:TextStyle(color: Color(0xfff3f1ee),fontSize:16,fontWeight: FontWeight.w600))),
),),
            ],
          ),
          
        ),
               Container(
          child: Column(
            children: [
              
Container(
  
height: 80,
width: 150,
decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'? Colors.white:Color(0xff353c50),borderRadius: BorderRadius.circular(20)),
child: Center(child: Text('Zimbabwe',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xfff3f1ee),fontSize:18,fontWeight: FontWeight.w600))),
  ),
Transform.translate(offset: Offset(0, -100.0),
child:   Container(
height:35 ,
width: 110,
decoration: BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff97b6e3),borderRadius: BorderRadius.circular(10)),
child: Center(child: Text('Country',style:TextStyle(color: Color(0xfff3f1ee),fontSize:16,fontWeight: FontWeight.w600))),
),),
            ],
          ),
          
        ),
        
      ],),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
        Container(
          child: Column(
            children: [
              
Container(
  
height: 80,
width: 150,
decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'? Colors.white:Color(0xff353c50),borderRadius: BorderRadius.circular(20)),
child: Center(child: Text('Zimbabwe',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xfff3f1ee),fontSize:18,fontWeight: FontWeight.w600))),
  ),
Transform.translate(offset: Offset(0, -100.0),
child:   Container(
height:35 ,
width: 110,
decoration: BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff97b6e3),borderRadius: BorderRadius.circular(10)),
child: Center(child: Text('Country',style:TextStyle(color: Color(0xfff3f1ee),fontSize:16,fontWeight: FontWeight.w600))),
),),
            ],
          ),
          
        ),
               Container(
          child: Column(
            children: [
              
Container(
  
height: 80,
width: 150,
decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
  color: controller.mode == 'light'? Colors.white:Color(0xff353c50),borderRadius: BorderRadius.circular(20)),
child: Center(child: Text('Zimbabwe',style:TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Color(0xfff3f1ee),fontSize:18,fontWeight: FontWeight.w600))),
  ),
Transform.translate(offset: Offset(0, -100.0),
child:   Container(
height:35 ,
width: 110,
decoration: BoxDecoration(color: controller.mode == 'light'? Color(0xff1A3A90):Color(0xff97b6e3),borderRadius: BorderRadius.circular(10)),
child: Center(child: Text('Country',style:TextStyle(color: Color(0xfff3f1ee),fontSize:16,fontWeight: FontWeight.w600))),
),),
            ],
          ),
          
        ),
        
      ],),
      
],
),
),


 





]),
   
   
   
   
   
   );
  }
}