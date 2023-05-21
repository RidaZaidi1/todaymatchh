import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modecontroller.dart';
import 'mainplayer.dart';
class Playerslist extends StatefulWidget {


  @override
  State<Playerslist> createState() => _PlayerslistState();
}
final controller = Get.put(DarkModeController());
class _PlayerslistState extends State<Playerslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xff020e28),
   body:Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(controller.mode == 'light'
                          ? "assets/backgroundlight.jpg"
                          : "assets/background.jpg"),
                      fit: BoxFit.cover)),
                      child: Scaffold(
backgroundColor: Colors.transparent,
                      
body: SingleChildScrollView(
  child:   Column(children: [
  SizedBox(height: 25,),
  Container(
  
     height: 50,
  
  
  
  width: double.infinity,
  
  
  
  
  
  
  
  decoration: BoxDecoration(color:controller.mode == 'light'? Color(0xff1A3A90) : Color(0xff373e52),
  
  
  
  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight: Radius.circular(50) )),
  
  
  
  child: Center(child: Text('Players',style: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.w800 ),)),
  
  ),
  
  SizedBox(height: 20,),
  
   Container(
  
        height: 60,
  
       width: 390,
  decoration: BoxDecoration(
      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6.0,
                            offset: Offset(0.0, 0.2)
                        )
                      ],
  ),
  
  
        child: TextField(
  
          
  
          cursorColor: Color(0xff020e28),
  
          decoration: InputDecoration(
  
            fillColor: Colors.white,
  
            filled: true,
  
             hintText: 'Search Player...',hintStyle:TextStyle(color: Color.fromARGB(255, 154, 150, 150),fontSize: 16) 
  
           ,prefixIcon: Icon(Icons.search,color: Color(0xff020e28),size: 20,),
  
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(60), borderSide: BorderSide.none),
  
      ),
  
   ),
  
   ),
  
   
  
     
  
      Container(
  
        height: 610,
  
        width: double.infinity,
  
        child: ListView(
  
          scrollDirection: Axis.vertical,
  
        padding: const EdgeInsets.all(8),
  
        children: <Widget>[
  
        Padding(
  
          padding: const EdgeInsets.all(8.0),
  
          child: Column(
  
            children: [
  
              SizedBox(height: 10,),
  
              GestureDetector(
                 onTap: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Mainplayer()));

    },
                child: Container(
                
                  height: 50,
                
                         
                
                  child: Row(
                
                    
                
                    children: [
                
                
                
                    Image.asset("assets/person.png",height: 55,),
                
                    Column(children: [
                
                      Padding(
                
                        padding: const EdgeInsets.only(left:30),
                
                        child: Text("Brian vitori",style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                
                      ),
                
                                    Padding(
                
                                      padding: const EdgeInsets.only(left:20.0,top:10),
                
                                      child: Text("Zimbabwe",style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9aaed5),fontSize: 15,fontWeight: FontWeight.w400),),
                
                                    ),
                
                    ],)
                
                  ],)
                
                ),
              ),
  
              SizedBox(height: 5,),
  
              Padding(
  
                padding: const EdgeInsets.all(8.0),
  
                child: Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,
  
                ),
  
              ),
  
           
  
            SizedBox(height: 5,),
  
               Container(
  
                height: 50,
  
           
  
                child: Row(
  
                  
  
                  children: [
  
              
  
                  Image.asset("assets/person.png",height: 55,),
  
                  Column(children: [
  
                    Padding(
  
                      padding: const EdgeInsets.only(left:30),
  
                      child: Text("Brian vitori",style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
  
                    ),
  
                                  Padding(
  
                                    padding: const EdgeInsets.only(left:20.0,top:10),
  
                                    child: Text("Zimbabwe",style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9aaed5),fontSize: 15,fontWeight: FontWeight.w400),),
  
                                  ),
  
                  ],)
  
                ],)
  
              ),
  
              SizedBox(height: 5,),
  
              Padding(
  
                padding: const EdgeInsets.all(8.0),
  
                child: Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,
  
                ),
  
              ),
  
           
  
            SizedBox(height: 5,),
             Container(
  
                height: 50,
  
           
  
                child: Row(
  
                  
  
                  children: [
  
              
  
                  Image.asset("assets/person.png",height: 55,),
  
                  Column(children: [
  
                    Padding(
  
                      padding: const EdgeInsets.only(left:30),
  
                      child: Text("Brian vitori",style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
  
                    ),
  
                                  Padding(
  
                                    padding: const EdgeInsets.only(left:20.0,top:10),
  
                                    child: Text("Zimbabwe",style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9aaed5),fontSize: 15,fontWeight: FontWeight.w400),),
  
                                  ),
  
                  ],)
  
                ],)
  
              ),
  
              SizedBox(height: 5,),
  
              Padding(
  
                padding: const EdgeInsets.all(8.0),
  
                child: Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,
  
                ),
  
              ),
  
           
  
            SizedBox(height: 5,),
             Container(
  
                height: 50,
  
           
  
                child: Row(
  
                  
  
                  children: [
  
              
  
                  Image.asset("assets/person.png",height: 55,),
  
                  Column(children: [
  
                    Padding(
  
                      padding: const EdgeInsets.only(left:30),
  
                      child: Text("Brian vitori",style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
  
                    ),
  
                                  Padding(
  
                                    padding: const EdgeInsets.only(left:20.0,top:10),
  
                                    child: Text("Zimbabwe",style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9aaed5),fontSize: 15,fontWeight: FontWeight.w400),),
  
                                  ),
  
                  ],)
  
                ],)
  
              ),
  
              SizedBox(height: 5,),
  
              Padding(
  
                padding: const EdgeInsets.all(8.0),
  
                child: Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,
  
                ),
  
              ),
  
           
  
            SizedBox(height: 5,),
             Container(
  
                height: 50,
  
           
  
                child: Row(
  
                  
  
                  children: [
  
              
  
                  Image.asset("assets/person.png",height: 55,),
  
                  Column(children: [
  
                    Padding(
  
                      padding: const EdgeInsets.only(left:30),
  
                      child: Text("Brian vitori",style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
  
                    ),
  
                                  Padding(
  
                                    padding: const EdgeInsets.only(left:20.0,top:10),
  
                                    child: Text("Zimbabwe",style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9aaed5),fontSize: 15,fontWeight: FontWeight.w400),),
  
                                  ),
  
                  ],)
  
                ],)
  
              ),
  
              SizedBox(height: 5,),
  
              Padding(
  
                padding: const EdgeInsets.all(8.0),
  
                child: Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,
  
                ),
  
              ),
  
           
  
            SizedBox(height: 5,),
             Container(
  
                height: 50,
  
           
  
                child: Row(
  
                  
  
                  children: [
  
              
  
                  Image.asset("assets/person.png",height: 55,),
  
                  Column(children: [
  
                    Padding(
  
                      padding: const EdgeInsets.only(left:30),
  
                      child: Text("Brian vitori",style: TextStyle(color: controller.mode == 'light'? Color(0xff020e28) :Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
  
                    ),
  
                                  Padding(
  
                                    padding: const EdgeInsets.only(left:20.0,top:10),
  
                                    child: Text("Zimbabwe",style: TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff9aaed5),fontSize: 15,fontWeight: FontWeight.w400),),
  
                                  ),
  
                  ],)
  
                ],)
  
              ),
  
              SizedBox(height: 5,),
  
              Padding(
  
                padding: const EdgeInsets.all(8.0),
  
                child: Divider(color: controller.mode == 'light'? Colors.grey :Colors.white,thickness: 1,
  
                ),
  
              ),
  
           
  
            SizedBox(height: 5,),
  
  
  
  
  
  
  
  
  
            ],
  
          ),
  
        ),
  
       
  
        
  
        
  
        
  
        ],
  
      ),
  
      )
  
      
  
      
  
      
  
      ]),
),
    
    
                      ))
    
    );




    
    
    
    
    
    

    
    
    
    
    
    
    
  }
}