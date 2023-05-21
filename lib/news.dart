import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modecontroller.dart';

class News extends StatefulWidget {
  const News({ Key? key }) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}
  final controller = Get.put(DarkModeController());
class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Theme.of(context).backgroundColor,
    body: Center(child:Text(controller.mode=='light'? 'dark mode':'light mode',style: TextStyle(color:controller.mode=='light'?Colors.blue:Colors.white ),)),
    );

  }
}