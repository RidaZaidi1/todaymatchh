import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/screens/homee3.dart';

import '../modecontroller.dart';

class Series extends StatefulWidget {
  const Series({ Key? key }) : super(key: key);

  @override
  State<Series> createState() => _SeriesState();
}
final controller = Get.put(DarkModeController());
class _SeriesState extends State<Series> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(children: [
       
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: GestureDetector(
            onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee4()));
                    },
          child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
        Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
       Padding(
         padding: const EdgeInsets.only(right:60.0),
         child: Text("Ireland tour of England ODi seris 2023",style: TextStyle(color:  controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          Padding(
            padding: const EdgeInsets.only(left:27.0,),
            child: Text('20 sep-26 sep 2023',style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9db5ef),fontSize: 15,fontWeight: FontWeight.w500)),
          ),
        Padding(
          padding: const EdgeInsets.only(right:25.0,bottom:25),
          child: Icon(Icons.arrow_forward_ios,color: controller.mode == 'light'? Color(0xff020e28) :Color(0xff9db5ef),size:20 ,),
        )
         ],
       ),
      
      Padding(
        padding: const EdgeInsets.only(right:45,left: 15),
        child: Divider(color: controller.mode == 'light'? Colors.grey:Colors.white,thickness: 1,),
      ),
      SizedBox(height: 15,),
     
     
    
  
      
      
      
      
      
      
      
      
        ],),
      ),
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    );
    
  }
}