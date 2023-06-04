import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../modecontroller.dart';
import 'SingleNews.dart';
import 'package:http/http.dart' as http;
class Npage extends StatefulWidget {
  const Npage({Key? key}) : super(key: key);

  @override
  State<Npage> createState() => _NpageState();
}

final controller = Get.put(DarkModeController());

class _NpageState extends State<Npage> {

  final url ='https://newsapi.org/v2/everything?q=cricket&apiKey=4fbaab55c3154c748ad2627adf533562';

  void initState(){
    super.initState();
    getNews();
  }
 List newslist=[];
  getNews ()async{
      final response = await http.get(Uri.parse(url));
    var data = json.decode(response.body);
    print(data);
for (var i = 0; i < data["articles"].length; i++) {
    if(data["articles"][i]["urlToImage"] !=null){
newslist.add(data["articles"][i]);
    
      
     //print(matchlist.add(data["response"]["items"][i]));
      
    }

    setState(() {});
}
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
     body:  
            newslist.length== 0 ?Center(child: CircularProgressIndicator(
            strokeWidth: 5,
           )):  
           GridView.builder(
              primary: true,
padding: const EdgeInsets.all(5),


             shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: ((context, index) {
return Column(

  children: <Widget>[
    
            SizedBox(height:6),    
    GestureDetector(
                      onTap: () {
                          Get.to( MyNews(newslist[index]));
                         
                      },
                      child: Container(
                       
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.14,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(newslist[index]["urlToImage"]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 5.0,
                                      offset: Offset(0.0, 0.25))
                                ],
                                color: controller.mode == 'light'
                                    ? Colors.white
                                    : Color(0xff31394A),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                     
                                        newslist[index]["title"],
                                            maxLines: 2,
    overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: controller.mode == 'light'
                                                ? Color(0xff1A3A90)
                                                : Color(0xff9aaed5),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600),
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
                                          child: Text(
                                             DateFormat('dd-MM-yyyy').format(DateTime.parse(newslist[index]["publishedAt"])).toString()
                                           ,
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
  ]
                  );
                    }
    ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
              ),)
              ,
            );
  
   
  
}
}