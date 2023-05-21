
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/screens/homee3.dart';
import 'package:today/screens/homee4.dart';
import 'package:today/screens/morenews.dart';
import 'package:today/screens/moreseries.dart';
import 'package:today/shared/Npage.dart';

import '../modecontroller.dart';



class Hpage1 extends StatefulWidget {
  const Hpage1({ Key? key }) : super(key: key);

  @override
  State<Hpage1> createState() => _Hpage1State();
}
final controller = Get.put(DarkModeController());
class _Hpage1State extends State<Hpage1> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
            resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,

   body:SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.all(4.0),
       child: Column(children: [

 Container(
    height: size.height*0.62,
    width:  double.infinity,
   
       child: ListView(
scrollDirection: Axis.horizontal,

  children: <Widget>[
Container(
  color: Colors.transparent,
child: Column(

  children:[

    SizedBox(height: 40,),

Transform.translate(offset: Offset(-20, -40.0),

   

       child:   Container( 

   

   height: size.height*0.11, 

   

   width: size.width*0.97,

   

    decoration: BoxDecoration(color: controller.mode == 'light'?  Color(0xfffd0001):  Color(0xff31394A),

   

       

   

       borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),), ),

   

       child: Row(

   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

       children: [

   
  Transform.translate(offset: Offset(0, -25.0),
               child: Padding(
               
                  
               
                    padding: const EdgeInsets.only(left:5),
               
                  
               
                    child: Text('Ireland v Bangladash in England',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
               
                  
               
                    ),
             ),

   

       Transform.translate(offset: Offset(0, -25.0),
         child: Padding(
         
            
         
         padding: const EdgeInsets.only(left:30 ),
         
            
         
             child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
         
            ),
       )],),),),

   

   

   Transform.translate(offset: Offset(-20, -89.0),

    child:   GestureDetector(
      onTap: (){
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee5()));
      },
      child: Container(
    
      height:size.height*0.25 ,
    
      width: size.width*0.97,
    
      decoration: BoxDecoration(color: controller.mode == 'light'
                                        ? Color(0xff1A3A90): Color(0xff5e6474),borderRadius: BorderRadius.circular(20)),
    
       child: Center(child: Column(
    
         children: [
    
          SizedBox(height: 40,),
    
           Row(
    
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    
            
    
            children: [
    
            Column(
    
              children: [
    
                Image.asset("assets/ireland.png",height: 30,width: 50,),
    
                Text("Ireland",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)
    
              ],
    
            ),
    
             Column(
    
              children: [
    
      Image.asset("assets/vs.png",height: 60,width: 90,),
    
    
    
    
    
              ],
    
            ),
    
             Column(
    
              children: [
    
                 Image.asset("assets/ban.png",height: 30,width: 50,),
    
                Text("Bangladesh",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
    
                Text("*94/2(14.4 ov)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)
    
              ],
    
            )
    
           ],),
    
           SizedBox(height: 20,),
    
            Text("County Ground , Chemsforlt",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
    
         ],
    
       ),),
    
      ),
    ),

   ),

   

   Transform.translate(offset: Offset(-20, -110.0),

   child:   Container(

   height:35,

   width: 230,

   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(10)),

   child: Center(child: Text('Start in 1d 5h 17m 20s',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

   ),

   ),

   

   Padding(

   padding: const EdgeInsets.only(right:290.0),

   child:   Transform.translate(offset: Offset(-20, -300.0),

   child: Container(

   height:25,

   width: 110,

   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(5)),

    child: Center(child: Text('Match 1',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

    ),

   ),

   ),



  ]

  

)
),
// _____________2 cont

Container(
  color: Colors.transparent,
child: Column(

  children:[

    SizedBox(height: 40,),

Transform.translate(offset: Offset(-20, -40.0),

   

       child:   Container( 

   

   height: size.height*0.11, 

   

   width: size.width*0.97,

   

    decoration: BoxDecoration(color: controller.mode == 'light'?  Color(0xfffd0001):  Color(0xff31394A),

   

       

   

       borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),), ),

   

       child: Row(

   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

       children: [

   
  Transform.translate(offset: Offset(0, -25.0),
               child: Padding(
               
                  
               
                    padding: const EdgeInsets.only(left:5),
               
                  
               
                    child: Text('Ireland v Bangladash in England',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
               
                  
               
                    ),
             ),

   

       Transform.translate(offset: Offset(0, -25.0),
         child: Padding(
         
            
         
         padding: const EdgeInsets.only(left:30 ),
         
            
         
             child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
         
            ),
       )],),),),

   

   

   Transform.translate(offset: Offset(-20, -89.0),

    child:   Container(

    height:size.height*0.25 ,

    width: size.width*0.97,

    decoration: BoxDecoration(color: controller.mode == 'light'
                                      ? Color(0xff1A3A90): Color(0xff5e6474),borderRadius: BorderRadius.circular(20)),

   child: Center(child: Column(

       children: [

        SizedBox(height: 40,),

         Row(

         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          

          children: [

          Column(

            children: [

              Image.asset("assets/ireland.png",height: 30,width: 50,),

              Text("Ireland",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)

            ],

          ),

           Column(

            children: [

  Image.asset("assets/vs.png",height: 60,width: 90,),





            ],

          ),

           Column(

            children: [

               Image.asset("assets/ban.png",height: 30,width: 50,),

              Text("Bangladesh",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),

              Text("*94/2(14.4 ov)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)

            ],

          )

         ],),

         SizedBox(height: 20,),

          Text("County Ground , Chemsforlt",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),

       ],

   ),),

    ),

   ),

   

   Transform.translate(offset: Offset(-20, -110.0),

   child:   Container(

   height:35,

   width: 230,

   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(10)),

   child: Center(child: Text('Start in 1d 5h 17m 20s',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

   ),

   ),

   

   Padding(

   padding: const EdgeInsets.only(right:290.0),

   child:   Transform.translate(offset: Offset(-20, -300.0),

   child: Container(

   height:25,

   width: 110,

   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(5)),

    child: Center(child: Text('Match 1',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

    ),

   ),

   ),



  ]

  

)
),
// ---------------3rd cont
Container(
  color: Colors.transparent,
child: Column(

  children:[

    SizedBox(height: 40,),

Transform.translate(offset: Offset(-20, -40.0),

   

       child:   Container( 

   

   height: size.height*0.11, 

   

   width: size.width*0.97,

   

    decoration: BoxDecoration(color: controller.mode == 'light'?  Color(0xfffd0001):  Color(0xff31394A),

   

       

   

       borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),), ),

   

       child: Row(

   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

       children: [

   
  Transform.translate(offset: Offset(0, -25.0),
               child: Padding(
               
                  
               
                    padding: const EdgeInsets.only(left:5),
               
                  
               
                    child: Text('Ireland v Bangladash in England',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
               
                  
               
                    ),
             ),

   

       Transform.translate(offset: Offset(0, -25.0),
         child: Padding(
         
            
         
         padding: const EdgeInsets.only(left:30 ),
         
            
         
             child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
         
            ),
       )],),),),

   

   

   Transform.translate(offset: Offset(-20, -89.0),

    child:   Container(

    height:size.height*0.25 ,

    width: size.width*0.97,

    decoration: BoxDecoration(color: controller.mode == 'light'
                                      ? Color(0xff1A3A90): Color(0xff5e6474),borderRadius: BorderRadius.circular(20)),

   child: Center(child: Column(

       children: [

        SizedBox(height: 40,),

         Row(

         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          

          children: [

          Column(

            children: [

              Image.asset("assets/ireland.png",height: 30,width: 50,),

              Text("Ireland",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)

            ],

          ),

           Column(

            children: [

  Image.asset("assets/vs.png",height: 60,width: 90,),





            ],

          ),

           Column(

            children: [

               Image.asset("assets/ban.png",height: 30,width: 50,),

              Text("Bangladesh",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),

              Text("*94/2(14.4 ov)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)

            ],

          )

         ],),

         SizedBox(height: 20,),

          Text("County Ground , Chemsforlt",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),

       ],

   ),),

    ),

   ),

   

   Transform.translate(offset: Offset(-20, -110.0),

   child:   Container(

   height:35,

   width: 230,

   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(10)),

   child: Center(child: Text('Start in 1d 5h 17m 20s',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

   ),

   ),

   

   Padding(

   padding: const EdgeInsets.only(right:290.0),

   child:   Transform.translate(offset: Offset(-20, -300.0),

   child: Container(

   height:25,

   width: 110,

   decoration: BoxDecoration(color: Color(0xfffd0001),borderRadius: BorderRadius.circular(5)),

    child: Center(child: Text('Match 1',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),

    ),

   ),

   ),



  ]

  

)
),

  ]
       ),

 ),

// ----------------end 1 listview

  Transform.translate(offset: Offset(0, -200),
       child:   Row(
       
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
       
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('Upcoming Series',style:TextStyle(color: controller.mode == 'light'?Color(0xff1A3A90)  :Color(0xff9aaed5),fontSize: 16,fontWeight:FontWeight.w700 ) ,),
              ),
       
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: GestureDetector(
                    onTap:(){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee3()));

                  },
                  child: Text('More',style:TextStyle(color:controller.mode == 'light'?Color(0xff1A3A90)  :Color(0xff9aaed5),fontSize: 16,fontWeight:FontWeight.w700 ) ,)),
              )
       
  
        ]

        
       )
   ),
   // -------------end upcomming
   Transform.translate(
       offset: Offset(0, -200),
       child:   Container(
       
        height: size.height*0.12,
       
        width: size.width*0.99,
       
        child:   ListView(
       
       scrollDirection: Axis.horizontal,
       
        
       
          
       
        
       
          children: <Widget>[
       
        
       
            Padding(
       
              padding: const EdgeInsets.all(8.0),
       
              child: GestureDetector(
                onTap: () {
                  
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee4()));
                },
                child: Container(
                   
                    
                   
                  height: size.height*0.2,
                   
                  width: size.width*0.9,
                   
                    decoration: BoxDecoration(
                       boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                color:controller.mode == 'light'?Colors.white  : Color(0xff31394A),
                      borderRadius: BorderRadius.circular(22)
                    ),
                   
                 
                   
                    
                   
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Irelanad tour of England Only test,2023",style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),fontSize: 14,fontWeight:FontWeight.w900 ) ,),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text("01 June - 04 June 2023",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff8CB3EA),fontSize: 13,fontWeight:FontWeight.w900 ) ,),
                          ),
                    ],
                  ) ,
                   
                    
                   
                ),
              ),
       
            ),
       
        
       
          Padding(
       
              padding: const EdgeInsets.all(8.0),
       
              child: GestureDetector(
                onTap: () {
                  
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee4()));
                },
                child: Container(
                   
                    
                   
                  height: size.height*0.2,
                   
                  width: size.width*0.9,
                   
                    decoration: BoxDecoration(
                       boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                color:controller.mode == 'light'?Colors.white  : Color(0xff31394A),
                      borderRadius: BorderRadius.circular(22)
                    ),
                   
                 
                   
                    
                   
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Irelanad tour of England Only test,2023",style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),fontSize: 14,fontWeight:FontWeight.w900 ) ,),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text("01 June - 04 June 2023",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff8CB3EA),fontSize: 13,fontWeight:FontWeight.w900 ) ,),
                          ),
                    ],
                  ) ,
                   
                    
                   
                ),
              ),
       
            ),
       
        
        Padding(
       
              padding: const EdgeInsets.all(8.0),
       
              child: GestureDetector(
                onTap: () {
                  
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee4()));
                },
                child: Container(
                   
                    
                   
                  height: size.height*0.2,
                   
                  width: size.width*0.9,
                   
                    decoration: BoxDecoration(
                       boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                color:controller.mode == 'light'?Colors.white  : Color(0xff31394A),
                      borderRadius: BorderRadius.circular(22)
                    ),
                   
                 
                   
                    
                   
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Irelanad tour of England Only test,2023",style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),fontSize: 14,fontWeight:FontWeight.w900 ) ,),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text("01 June - 04 June 2023",style:TextStyle(color: controller.mode == 'light'? Color(0xff1A3A90) :Color(0xff8CB3EA),fontSize: 13,fontWeight:FontWeight.w900 ) ,),
                          ),
                    ],
                  ) ,
                   
                    
                   
                ),
              ),
       
            ),
       
        
       
          ],
       
        
       
        ),
       
       ),
   ),
    Transform.translate(offset: Offset(0, -200),
       child:   Row(
       
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
       
        children: [
       
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('Top News',style:TextStyle(color: controller.mode == 'light'?Color(0xff1A3A90)  :Color(0xff9aaed5),fontSize: 16,fontWeight:FontWeight.w700 ) ,),
              ),
       
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: GestureDetector(
                  onTap:(){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homee2()));

                  },
                  child: Text('More',style:TextStyle(color:controller.mode == 'light'?Color(0xff1A3A90)  :Color(0xff9aaed5),fontSize: 16,fontWeight:FontWeight.w700 ) ,)),
              )
       
  
        ]

        
       )
   ),
       Transform.translate(offset: Offset(0, -200),
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(10.0),
           
               child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                     boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,

                    decoration: BoxDecoration(
           borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),) ,
                       image: DecorationImage(image: AssetImage("assets/list1.jpeg"),fit: BoxFit.cover)
                       
                  ),
                      ),
                      Container(
                        height:80,
                        width: double.infinity,
                      decoration: BoxDecoration(
           borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),) ,
                        color:controller.mode == 'light'?Colors.white  : Color(0xff31394A),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Irelanad tour of England Only test,2023.Pakistan return for Test  match as part  of massive WA summer.",style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Color(0xff9aaed5),fontSize: 13,fontWeight:FontWeight.w700 ) ,),
                ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("",textAlign: TextAlign.end,),
                           Padding(
                             padding: const EdgeInsets.only(right:10.0),
                             child: Text("14 May 2023",style:TextStyle(color: Colors.red,fontSize: 13,fontWeight:FontWeight.w700 )),
                           ),
                         ],
                       ),
                    ],
                  ),
                      )
                
               
             
                 
                    ],
                  ),
                ),
 
             ),
            Padding(
             padding: const EdgeInsets.all(10.0),
           
               child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                     boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            offset: Offset(0.0, 0.25)
                        )
                      ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,

                    decoration: BoxDecoration(
           borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),) ,
                       image: DecorationImage(image: AssetImage("assets/list1.jpeg"),fit: BoxFit.cover)
                       
                  ),
                      ),
                      Container(
                        height:80,
                        width: double.infinity,
                      decoration: BoxDecoration(
           borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),) ,
                        color:controller.mode == 'light'?Colors.white  : Color(0xff31394A),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Irelanad tour of England Only test,2023.Pakistan return for Test  match as part  of massive WA summer.",style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Color(0xff9aaed5),fontSize: 13,fontWeight:FontWeight.w700 ) ,),
                ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("",textAlign: TextAlign.end,),
                           Padding(
                             padding: const EdgeInsets.only(right:10.0),
                             child: Text("14 May 2023",style:TextStyle(color: Colors.red,fontSize: 13,fontWeight:FontWeight.w700 )),
                           ),
                         ],
                       ),
                    ],
                  ),
                      )
                
               
             
                 
                    ],
                  ),
                ),
 
             ),
         ],
       ),
       ),

       ]
   ),
     ),
   ),
    
    );
  }
}