import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../modecontroller.dart';

class Standing extends StatefulWidget {
  //const Standing({ Key? key }) : super(key: key);
var SeriesProfile;
Standing(this.SeriesProfile);
  @override
  State<Standing> createState() => _StandingState();
}
final controller = Get.put(DarkModeController());
class _StandingState extends State<Standing> {
   void initState() {
    super.initState();
    // print(widget.PlayerProfile);
getplayerdata();
    print("fgfg");
  }
    var standin=[];
 getplayerdata() async {



         final String apiUrl =
        
   'https://rest.entitysport.com/v2/competitions/${widget.SeriesProfile["cid"]}/standings?token=f94a09518bdeb24c299555502fa6bdb6&per_page=50&&paged=1';
    final response = await http.get(Uri.parse(apiUrl));
    var data2 = json.decode(response.body);
     print(data2["response"]["standings"]);
  
   
    for (var i = 0; i < data2["response"]["standings"]; i++) {
    
      standin.add(data2["response"]["standings"][i]);
    
      
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
 return Scaffold(
backgroundColor:Colors.transparent,
body: Container(
  
  child: standin.length==0? Column(
  
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
  
  ):Container(),
),
    );
  }
}