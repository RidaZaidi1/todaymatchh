import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modecontroller.dart';
import 'SingleNews.dart';

class Npage extends StatefulWidget {
  const Npage({Key? key}) : super(key: key);

  @override
  State<Npage> createState() => _NpageState();
}

final controller = Get.put(DarkModeController());

class _NpageState extends State<Npage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyNews()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.2,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/list1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 90,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Irelanad tour of England Only test,2023.Pakistan  WA summer.",
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff1A3A90)
                                            : Color(0xff9aaed5),
                                        fontSize: 13,
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
                                      child: Text("14 May 2023",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyNews()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.2,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/list1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 90,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Irelanad tour of England Only test,2023.Pakistan  WA summer.",
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff1A3A90)
                                            : Color(0xff9aaed5),
                                        fontSize: 13,
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
                                      child: Text("14 May 2023",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyNews()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.2,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/list1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 90,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Irelanad tour of England Only test,2023.Pakistan  WA summer.",
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff1A3A90)
                                            : Color(0xff9aaed5),
                                        fontSize: 13,
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
                                      child: Text("14 May 2023",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyNews()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.2,
                            width: size.width * 0.45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage("assets/list1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 90,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Irelanad tour of England Only test,2023.Pakistan  WA summer.",
                                    style: TextStyle(
                                        color: controller.mode == 'light'
                                            ? Color(0xff1A3A90)
                                            : Color(0xff9aaed5),
                                        fontSize: 13,
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
                                      child: Text("14 May 2023",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
            GestureDetector(
                  onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyNews()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: size.height*0.2,
                          width:size.width*0.45 ,
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),) ,
                           image: DecorationImage(image: AssetImage("assets/list1.jpeg"),fit: BoxFit.cover),
                         
                      ),
                        ),
                         Container(
                          height: 90,
                          width: size.width*0.45 ,
                            decoration: BoxDecoration(
                             borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),) ,
                        boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.25)
                      )
                    ],
                             color: controller.mode == 'light'?Colors.white  :Color(0xff31394A),
                      ),
                               child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Irelanad tour of England Only test,2023.Pakistan  WA summer.",style:TextStyle(color:controller.mode == 'light'? Color(0xff1A3A90): Color(0xff9aaed5),fontSize: 13,fontWeight:FontWeight.w600 ) ,),
                              ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("",textAlign: TextAlign.end,),
                           Padding(
                             padding: const EdgeInsets.only(right:10.0),
                             child: Text("14 May 2023",style:TextStyle(color: Colors.red,fontSize: 13,fontWeight:FontWeight.w600 )),
                           ),
                         ],
                       ),
                    ],
                  ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                 GestureDetector(
                  onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyNews()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: size.height*0.2,
                          width:size.width*0.45 ,
                           decoration: BoxDecoration(
                             borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),) ,
                           image: DecorationImage(image: AssetImage("assets/list1.jpeg"),fit: BoxFit.cover),
                         
                      ),
                        ),
                         Container(
                          height: 90,
                          width: size.width*0.45 ,
                            decoration: BoxDecoration(
                             borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),) ,
                        boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.25)
                      )
                    ],
                             color: controller.mode == 'light'?Colors.white  :Color(0xff31394A),
                      ),
                               child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Irelanad tour of England Only test,2023.Pakistan  WA summer.",style:TextStyle(color:controller.mode == 'light'? Color(0xff1A3A90): Color(0xff9aaed5),fontSize: 13,fontWeight:FontWeight.w600 ) ,),
                              ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("",textAlign: TextAlign.end,),
                           Padding(
                             padding: const EdgeInsets.only(right:10.0),
                             child: Text("14 May 2023",style:TextStyle(color: Colors.red,fontSize: 13,fontWeight:FontWeight.w600 )),
                           ),
                         ],
                       ),
                    ],
                  ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
