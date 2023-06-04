import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:today/shared/Hpage.dart';
import 'package:today/shared/Mpage.dart';
import 'package:today/shared/Npage.dart';
import 'package:today/shared/moree.dart';

import 'package:today/shared/series.dart';

import '../../modecontroller.dart';
import 'ODI/odimain.dart';
import 'T20/t20main.dart';
import 'TEST/testmain.dart';



class Mainrank extends StatefulWidget {
  const Mainrank({Key? key}) : super(key: key);

  @override
  _MainrankState createState() => _MainrankState();
}

final controller = Get.put(DarkModeController());

class _MainrankState extends State<Mainrank> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: GetBuilder<DarkModeController>(
          builder: (controller){
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(controller.mode == 'light'
                          ? "assets/backgroundlight.jpg"
                          : "assets/background.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
           
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Column(
                        children: [
                          Container(
                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: controller.mode == 'light'
                                    ? Color(0xff1A3A90)
                                    : Color(0xff353e52),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                          ),
                          Transform.translate(
                            offset: Offset(0, -60.0),
                            child: Container(
                              height: 40,
                              width: size.width * 0.98,
                              decoration: BoxDecoration(
                                  color: controller.mode == 'light'
                                      ? Color(0xff3452A0)
                                      : Colors.grey[700],
                                  borderRadius: BorderRadius.circular(25.0)),
                              child: TabBar(
                                indicator: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.0)),
                                labelColor: Color(0xff0E317C),
                                unselectedLabelColor: Colors.white,
                                tabs: const [
                                  Tab(
                                    text: 'ODI',
                                  ),
                                  Tab(
                                    text: 'TEST',
                                  ),
                                  Tab(
                                    text: 'T20',
                                  ),
                                
                                ],
                              ),
                            ),
                          ),
                          const Expanded(
                              child: TabBarView(
                            children: [
                             Odimain(),
                          
                           Testmain(),
                            T20main(),
                            ],
                          ))
                        ],
                      )),
                ),
              ));
          },
       
        ));
  }
}




