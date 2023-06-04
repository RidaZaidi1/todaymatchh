import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:today/screens/series/playerslist.dart';
import 'dart:convert';
import '../modecontroller.dart';

class Team extends StatefulWidget {
 // const Team({ Key? key }) : super(key: key);
var SeriesProfile;
Team(this.SeriesProfile);
  @override
  State<Team> createState() => _TeamState();
}
final controller = Get.put(DarkModeController());
class _TeamState extends State<Team> {
     void initState() {
    super.initState();
   print(widget.SeriesProfile["cid"]);
        print("twam");
    getplayerdata();

  }

  var seriesprofilee1=[];


  getplayerdata() async {
      
         final String apiUrl =
        
   'https://rest.entitysport.com/v2/competitions/${widget.SeriesProfile["cid"]}/teams/?token=f94a09518bdeb24c299555502fa6bdb6&per_page=50&&paged=1';
    final response = await http.get(Uri.parse(apiUrl));
    var data2 = json.decode(response.body);
    print('df');
    print(data2);
       for (var i = 0; i < data2["response"]["teams"].length; i++) {
    
      seriesprofilee1.add(data2["response"]["teams"][i]);
     //print(matchlist.add(data["response"]["items"][i]));
      
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
 return Container(

child: Column(
  children: [
        SizedBox(height:35),
Transform.translate(
        offset: Offset(0,-30),
  child:   Padding(
  
    padding: const EdgeInsets.only(left:10.0,right: 10),
  
    child:   Container(
  
    
  
    height: 350,
  
    
  
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
  
  
  
     child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(8),
          
              itemCount: seriesprofilee1.length,
                      itemBuilder: ((context, index) {
                        print(seriesprofilee1[index]['player']);
                // print(matchlist[index]);
                    return  Container(
                      child: Column(
                        children: [
                           SizedBox(height:15),
                             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      
  
        children: [
  
      Column(
  
        children: [
  
          
  
   Row(
  
     children: [
  
        Padding(
  
               padding: const EdgeInsets.only(left:20,),
  
          child:  CircleAvatar(
                                          radius: 15,
                                          backgroundImage: NetworkImage(
                                           seriesprofilee1[index]["logo_url"],
                                            // height: 30,
                                            // width: 30,
                                            
                                          ),
                                        ),
  
        ),
  
       Padding(
  
          
  
            padding: const EdgeInsets.only(left:10,),
  
          
  
            child:   GestureDetector(
               onTap: () {
                                  Get.to(Playerslist1(  seriesprofilee1[index]));
                                },
              child: Text(  seriesprofilee1[index]["title"],style:TextStyle(color:controller.mode == 'light'? Color(0xff020e28) : Colors.white,fontSize:16,fontWeight: FontWeight.w500))),
  
          
  
          ),
  
     ],
  
   ),
  
        ],
  
      ),
  
     
  
     
  
      
  
      Padding(
  
      
  
        padding: const EdgeInsets.only(right:23),
  
      
  
        child:   Icon(Icons.arrow_forward_ios,color:  controller.mode == 'light'? Color(0xff020e28) :Color(0xff9aaed5),size: 20,),
  
      
  
      ),
  
      
  
        ],
  
      
  
      ),
       SizedBox(height:15),
  
      Padding(
  
        padding: const EdgeInsets.only(left:25.0,right: 25.0),
  
        child: Divider(color: Colors.grey,thickness: 1,),
  
      ),
  

                        ],
                      ),
                    );
                    
                      }
                      )
     ),
   ),
  
  ),
),

  

  ]
)
 );
  }
}