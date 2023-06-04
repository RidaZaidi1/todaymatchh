import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../modecontroller.dart';

import 'squad11.dart';
import 'squad2.dart';

class Squadmain extends StatefulWidget {
  //const Squadmain({Key? key}) : super(key: key);
var PlayerProfile1;
   Squadmain(this.PlayerProfile1);
  @override
  _SquadmainState createState() => _SquadmainState();
}

final controller = Get.put(DarkModeController());

class _SquadmainState extends State<Squadmain> {

    void initState() {
    super.initState();
     print(widget.PlayerProfile1[0]['teama']["name"]);
  
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(body: GetBuilder<DarkModeController>(
      builder: (controller) {
        return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(controller.mode == 'light'
                        ? "assets/backgroundlight.jpg"
                        : "assets/background.jpg"),
                    fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: DefaultTabController(
                length: 2,
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: controller.mode == 'light'
                                  ? Color(0xff1A3A90)
                                  : Color(0xff353e52),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40))),
                          child: Transform.translate(
                              offset: Offset(0, -30.0),
                              child: Center(
                                  child: Text(
                                "Squads",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800),
                              ))),
                        ),
                        Transform.translate(
                          offset: Offset(0, -65.0),
                          child: Container(
                            height: 40,
                            width: size.width * 0.9,
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
                              tabs:  [
                                Tab(
                                  text:widget.PlayerProfile1[0]['teama']["name"],
                                ),
                                Tab(
                                  text: widget.PlayerProfile1[0]['teamb']["name"],
                                ),
                              ],
                            ),
                          ),
                        ),
                         Expanded(
                            child: TabBarView(
                          children: [
                            Squad11(widget.PlayerProfile1[0]['teama']["team_id"]),
                            Squad2(widget.PlayerProfile1[0]['teamb']["team_id"]),
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
