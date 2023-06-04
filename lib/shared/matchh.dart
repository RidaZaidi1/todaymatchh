import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class MAtchinfo extends StatefulWidget {
 // const MAtchinfo({ Key? key }) : super(key: key);
var SeriesProfile;
MAtchinfo(this.SeriesProfile);
  @override
  State<MAtchinfo> createState() => _MAtchinfoState();
}

class _MAtchinfoState extends State<MAtchinfo> {
  void initState() {
    super.initState();
    // print(widget.PlayerProfile);
    // getplayerdata();
    print("fgfg");
  }

  var seriesprofile=[];


  getplayerdata() async {
      
         final String apiUrl =
        'https://rest.entitysport.com/v2/seasons/2021/competitions/${widget.SeriesProfile["cid"]}/matches?token=f94a09518bdeb24c299555502fa6bdb6&per_page=10&&paged=1';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);
    print(data);
    //seriesprofile.add(data["response"]["player"]);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
 return  Scaffold( backgroundColor: Color(0xff020e28),

body:SingleChildScrollView(scrollDirection: Axis.vertical,
  child:   Column(children: [ 

  Transform.translate(offset: Offset(0, -30.0),
  
  
  
    child:   Container( 
  
  
  
  height: 100, 
  
  
  
  width: 395,
  
  
  
   decoration: BoxDecoration(color: Color.fromARGB(255, 46, 51, 63),
  
  
  
    
  
  
  
    borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),), ),
  
  
  
    child: Row(
  
  
  
    children: [
  
  
  
           Padding(
  
  
  
     padding: const EdgeInsets.only(left:20 ),
  
  
  
    child: Text('Ireland tour of England ODI Series',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
  
  
  
     ),
  
  
  
     Padding(
  
  
  
    padding: const EdgeInsets.only(left:100 ),
  
  
  
   child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
  
  )],),),),
  
  
  
  
  
  Transform.translate(offset: Offset(0, -60.0),
  
   child:   Container(
  
   height:180 ,
  
   width: 395,
  
   decoration: BoxDecoration(color: Color(0xff353e52),borderRadius: BorderRadius.circular(20),),
  
  
  
  child: Column(
  
    children: [
  
          Padding(
  
            padding: const EdgeInsets.only(top:25.0,left:250 ),
  
            child: Text('20 sep 23|16:30',style:TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w500 )),
  
          ),
            SizedBox(height: 15,),
          Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,

        

        children: [

        Column(

          children: [

            Image.asset("assets/ireland.png",height: 30,width: 30,),

            Text("Ireland",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),)

          ],

        ),

         Column(

          children: [

  Image.asset("assets/vs.png",height: 50,width: 70,),





          ],

        ),

         Column(

          children: [

             Image.asset("assets/ban.png",height: 30,width: 30,),

            Text("Bangladesh",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16),),

         

          ],

        )

       ],),

  
     Padding(
       padding: const EdgeInsets.only(right:20.0,top:20),
       child: Text("Lord's",style:TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w500 )),
     ),
  
    ],
  
  ),
  
  
  
  
  
   ),
  
  ),
  
  
  
  Transform.translate(offset: Offset(0, -80.0),
  
  child:   Container(
  
  height:35,
  
  width: 260,
  
  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
  
  child: Center(child: Text('Start in 127d 15h 12m 32s',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.w500 ) ,)),
  
  ),
  
  ),
  
  
  
  Padding(
  
  padding: const EdgeInsets.only(right:315.0),
  
  child:   Transform.translate(offset: Offset(0, -260.0),
  
  child: Container(
  
  height:25,
  
  width: 100,
  
  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(3)),
  
   child: Center(child: Text('ONLY TEST',style:TextStyle(color: Colors.white,fontSize: 16,fontWeight:FontWeight.w500 ) ,)),
  
   ),
  
  ),
  
  ),
  
  
  
  
  
 
  
  
  ]),
),























);
  }
}