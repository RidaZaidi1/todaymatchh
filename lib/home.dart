import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modecontroller.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

bool swvalue=true;
 final controller = Get.put(DarkModeController());
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Theme.of(context).backgroundColor,
      body: Center(child:GestureDetector(
        onTap: (){
        controller.toggleTheme();
        },
        child: Switch(value: swvalue, onChanged: (value){
          controller.toggleTheme();
          swvalue=!swvalue;
          setState(() {
            
          });

        })
    )));
  }
}