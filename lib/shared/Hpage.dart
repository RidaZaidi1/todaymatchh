import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:today/screens/homee3.dart';
import 'package:today/screens/homee4.dart';
import 'package:today/screens/morenews.dart';
import 'package:today/screens/moreseries.dart';
import 'package:today/shared/Npage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../modecontroller.dart';
import 'SingleNews.dart';
import 'upcominginfo/upcominghome.dart';

class Hpage1 extends StatefulWidget {
  const Hpage1({Key? key}) : super(key: key);

  @override
  State<Hpage1> createState() => _Hpage1State();
}

final controller = Get.put(DarkModeController());

class _Hpage1State extends State<Hpage1> {
   void initState() {
    super.initState();
    getSeries();
        getNews();
          getmatch();
  }
   final urln ='https://newsapi.org/v2/everything?q=cricket&apiKey=4fbaab55c3154c748ad2627adf533562';

 
 List newslist=[];
  getNews ()async{
      final response = await http.get(Uri.parse(urln));
    var data2 = json.decode(response.body);
    print(data2);
for (var i = 0; i < data2["articles"].length; i++) {
    if(data2["articles"][i]["urlToImage"] !=null){
newslist.add(data2["articles"][i]);
    
      
     //print(matchlist.add(data["response"]["items"][i]));
      
    }

    setState(() {});
}
  }
   

  var SeriesList = [];

  getSeries() async {
    final String apiUrl =
        'https://rest.entitysport.com/v2/seasons/2023/competitions?token=f94a09518bdeb24c299555502fa6bdb6';
    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);

    for (var i = 0; i < data["response"]["items"].length; i++) {
      SeriesList.add(data["response"]["items"][i]);
    }
    final String apiUrl1 =
        'https://rest.entitysport.com/v2/seasons/2023/competitions?token=f94a09518bdeb24c299555502fa6bdb6';
    final response1 = await http.get(Uri.parse(apiUrl1));
    var data1 = json.decode(response.body);
 final String apiUrl2 =
        'https://rest.entitysport.com/v2/seasons/2023/competitions?token=f94a09518bdeb24c299555502fa6bdb6';
    final response2 = await http.get(Uri.parse(apiUrl2));
    var data2 = json.decode(response.body);

    for (var i = 0; i < data["response"]["items"].length; i++) {
      SeriesList.add(data["response"]["items"][i]);
    }
    setState(() {});
  }
 
  var matchlist = [];

  getmatch() async {

    final String apiUrl =
         'https://rest.entitysport.com/v2/matches/?status=1&token=f94a09518bdeb24c299555502fa6bdb6';

    final response = await http.get(Uri.parse(apiUrl));
    var data = json.decode(response.body);

print(data);

    for (var i = 0; i < data["response"]["items"].length; i++) {
    
      matchlist.add(data["response"]["items"][i]);
     //print(matchlist.add(data["response"]["items"][i]));
      
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(children: [
             matchlist.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  strokeWidth: 5,
                ))
              :  GetBuilder<DarkModeController>(
                builder: (controller){
return  Transform.translate(
  offset: Offset(0,-20),
  child:   Container(
  
                height: size.height * 0.62,
  
                width: double.infinity,
  
                child:
  
                    ListView.builder(  
  
                shrinkWrap: true,
  
                physics: BouncingScrollPhysics(),
  
                itemBuilder: ((context, index) {
  
                    String? timeReamining =controller.getDateDiff(matchlist[index]["date_start"]);;
  
                          Timer.periodic(const Duration(seconds: 1), (timer) {
  
                             timeReamining =
  
                                controller.getDateDiff(matchlist[index]["date_start"]);
  
                            setState(() {});
  
                          });
  
  
  
                         bool isShow= controller.isDifferenceGreaterThan48Hours(matchlist[index]["date_start"]);
  
                  print(matchlist[index]);
  
  
  
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
  
                      onTap: (){
  
                        // print(matchlist[index]);
  
                        Get.to(Upcominghome(matchlist[index]));
  
                      },
  
                      child:isShow==true? Container(
  
                        child: Column(
  
                          children: [
  
                            Transform.translate(
  
                              offset: Offset(0, 10.0),
  
                              child: Container(
  
                                height: size.height * 0.11,
  
                                width: size.width * 0.99,
  
                                decoration: BoxDecoration(
  
                                  color: controller.mode == 'light'
  
                                      ? Color(0xfffd0001)
  
                                      : Color(0xff28231D),
  
                                  borderRadius: BorderRadius.only(
  
                                    topLeft: Radius.circular(20),
  
                                    topRight: Radius.circular(20),
  
                                  ),
  
                                ),
  
                                child: Row(
  
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                                  children: [
  
                                    Padding(
  
                                      padding: const EdgeInsets.only(left: 15),
  
                                      child: Transform.translate(
  
                                          offset: Offset(0, -20.0),
  
                                          child: Text(
  
                                            matchlist[index]["title"],
  
                                            style: TextStyle(
  
                                                color: Colors.white,
  
                                                fontSize: 13,
  
                                                fontWeight: FontWeight.w400),
  
                                          )),
  
                                    ),
  
                                    Padding(
  
                                      padding: const EdgeInsets.only(left: 0),
  
                                      child: Transform.translate(
  
                                          offset: Offset(0, -20.0),
  
                                          child: Icon(
  
                                            Icons.arrow_forward_ios,
  
                                            color: Colors.white,
  
                                          )),
  
                                    )
  
                                  ],
  
                                ),
  
                              ),
  
                            ),
  
                            Transform.translate(
  
                              offset: Offset(0, -30.0),
  
                              child: Container(
  
                                height: size.height * 0.24,
  
                                width: size.width * 0.99,
  
                                decoration: BoxDecoration(
  
                                  color: controller.mode == 'light'
  
                                      ? Color(0xff1A3A90)
  
                                      : Color(0xff353e52),
  
                                  borderRadius: BorderRadius.circular(20),
  
                                ),
  
                                child: Column(
  
                                  children: [
  
                                    Padding(
  
                                      padding: const EdgeInsets.only(
  
                                          top: 25.0, left: 230),
  
                                      child: Text(DateFormat('dd-MM-yyyy').format(DateTime.parse(matchlist[index]["date_start_ist"])).toString() + " | " + DateFormat('HH:mm').format(DateTime.parse(matchlist[index]["date_start_ist"])).toString() ,
  
                                          style: TextStyle(
  
                                              color: Colors.white,
  
                                              fontSize: 13,
  
                                              fontWeight: FontWeight.w500)),
  
                                    ),
  
                                    SizedBox(
  
                                      height: 15,
  
                                    ),
  
                                    Row(
  
                                      mainAxisAlignment:
  
                                          MainAxisAlignment.spaceAround,
  
                                      children: [
  
                                        Column(
  
                                          children: [
  
                                            CircleAvatar(
  
                                              radius: 15,
  
                                              backgroundImage: NetworkImage(
  
                                               matchlist[index]["teama"]["logo_url"],
  
                                                // height: 30,
  
                                                // width: 30,
  
                                                
  
                                              ),
  
                                            ),
  
                                            Padding(
  
                                              padding: const EdgeInsets.only(top:12.0),
  
                                              child: Text(
  
                                                matchlist[index]["teama"]["short_name"],
  
                                                style: TextStyle(
  
                                                    color: Colors.white,
  
                                                    fontWeight: FontWeight.w400,
  
                                                    fontSize: 14),
  
                                              ),
  
                                            )
  
                                          ],
  
                                        ),
  
                                        Column(
  
                                          children: [
  
                                            Image.asset(
  
                                              "assets/vs.png",
  
                                              height: 50,
  
                                              width: 70,
  
                                            ),
  
                                          ],
  
                                        ),
  
                                        Column(
  
                                          children: [
  
                                            CircleAvatar(
  
                                              radius: 15,
  
                                              backgroundImage: NetworkImage(
  
                                               matchlist[index]["teamb"]["logo_url"],
  
                                                // height: 30,
  
                                                // width: 30,
  
                                                
  
                                              ),
  
                                            ),
  
                                            Padding(
  
                                              padding: const EdgeInsets.only(top:12.0),
  
                                              child: Text(
  
                                                matchlist[index]["teamb"]["short_name"],
  
                                                style: TextStyle(
  
                                                    color: Colors.white,
  
                                                    fontWeight: FontWeight.w400,
  
                                                    fontSize: 13),
  
                                              ),
  
                                            ),
  
                                          ],
  
                                        )
  
                                      ],
  
                                    ),
  
                                    Padding(
  
                                      padding: const EdgeInsets.only(
  
                                          right: 20.0, top: 20),
  
                                      child: Text(matchlist[index]["venue"]["name"],
  
                                          style: TextStyle(
  
                                              color: Colors.white,
  
                                              fontSize: 13,
  
                                              fontWeight: FontWeight.w500)),
  
                                    ),
  
                                  ],
  
                                ),
  
                              ),
  
                            ),
  
                            Transform.translate(
  
                              offset: Offset(0, -50.0),
  
                              child: Container(
  
                                height: 35,
  
                                width: 200,
  
                                decoration: BoxDecoration(
  
                                    color: Color(0xfffd0001),
  
                                    borderRadius: BorderRadius.circular(10)),
  
                                child: Center(
  
                                    child: Text(
  
                                    timeReamining!,
  
                                  style: TextStyle(
  
                                      color: Colors.white,
  
                                      fontSize: 15,
  
                                      fontWeight: FontWeight.w500),
  
                                )),
  
                              ),
  
                            ),
  
                            Padding(
  
                              padding: const EdgeInsets.only(right: 260.0),
  
                              child: Transform.translate(
  
                                offset: Offset(0, -225.0),
  
                                child: Container(
  
                                  height: 25,
  
                                  width: 100,
  
                                  decoration: BoxDecoration(
  
                                      color: Color(0xfffd0001),
  
                                      borderRadius: BorderRadius.circular(3)),
  
                                  child: Center(
  
                                      child: Text(
  
                                     matchlist[index]["subtitle"],
  
                                    style: TextStyle(
  
                                        color: Colors.white,
  
                                        fontSize: 12,
  
                                        fontWeight: FontWeight.w500),
  
                                  )),
  
                                ),
  
                              ),
  
                            ),
  
                          ],
  
                        ),
  
                      ):SizedBox(),
  
                    ),
                  );
  
                }),
  
                scrollDirection: Axis.horizontal,
  
                itemCount: matchlist.length,
  
              )
  
              ),
);

                }
              ),
              
             

// ----------------end 1 listview

            Transform.translate(
                offset: Offset(0, -200),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Upcoming Series',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff9aaed5),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: GestureDetector(
                            onTap: () {
                                Get.to( Homee3());
                          
                            },
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff9aaed5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                      )
                    ])),
            // -------------end upcomming
            Transform.translate(
              offset: Offset(0, -200),
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.99,
                child:  SeriesList.length== 0 ?Center(child: CircularProgressIndicator(
            strokeWidth: 5,
           )):
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: ((context, index) {
                  return   Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                            Get.to( Homee4(SeriesList[index]));
                    
                        },
                        child: Container(
                          height: size.height * 0.2,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 5.0,
                                    offset: Offset(0.0, 0.25))
                              ],
                              color: controller.mode == 'light'
                                  ? Colors.white
                                  : Color(0xff31394A),
                              borderRadius: BorderRadius.circular(22)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
   "${SeriesList[index]["title"]} 2023",
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff020e28)
                                          : Color(0xff9aaed5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                            SeriesList[index]["datestart"] +"  to  "+SeriesList[index]["dateend"],
                                  style: TextStyle(
                                      color: controller.mode == 'light'
                                          ? Color(0xff1A3A90)
                                          : Color(0xff8CB3EA),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                }
                )
              )

              ),
            ),
            Transform.translate(
                offset: Offset(0, -200),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Top News',
                          style: TextStyle(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff9aaed5),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: GestureDetector(
                            onTap: () {
                                Get.to( Homee2());
                            
                            },
                            child: Text(
                              'More',
                              style: TextStyle(
                                  color: controller.mode == 'light'
                                      ? Color(0xff1A3A90)
                                      : Color(0xff9aaed5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                      )
                    ])),
            Transform.translate(
              offset: Offset(0, -200),
              child:  newslist.length== 0 ? Center(child: CircularProgressIndicator(
          strokeWidth: 5,
         )): ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: BouncingScrollPhysics(),
                itemBuilder: ((context2, index2) {

               
                 return GestureDetector(
                   onTap: () {
                          Get.to( MyNews(newslist[index2]));
                         
                      },
                   child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5.0,
                                offset: Offset(0.0, 0.25))
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 170,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                                                          image: NetworkImage(newslist[index2]["urlToImage"]),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff31394A),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                       newslist[index2]["title"],
                                            maxLines: 2,
    overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: controller.mode == 'light'
                                              ? Color(0xff020e28)
                                              : Color(0xff9aaed5),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "",
                                        textAlign: TextAlign.end,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Text(  DateFormat('dd-MM-yyyy').format(DateTime.parse(newslist[index2]["publishedAt"])).toString(),
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700)),
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
                 );
                 
                }
                )
              )
             
            ),
          ]),
        ),
      ),
    );
  }
}
