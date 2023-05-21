import 'dart:async';

import 'package:flutter/material.dart';

import 'homee.dart';
class SplashScrren extends StatefulWidget {
  const SplashScrren({ Key? key }) : super(key: key);

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
    @override
void initState(){
super.initState();
Timer(Duration(seconds: 3),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>Homee())));
}
  @override
  Widget build(BuildContext context) {
  return Scaffold(
body: Container(
  alignment: Alignment.center,
  padding: EdgeInsets.all(32),
  decoration: BoxDecoration(
    image:DecorationImage(image: AssetImage("assets/background.jpg"),fit:BoxFit.cover)
  ),
   child: Scaffold(
    backgroundColor: Colors.transparent,
    body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      child: Image.asset("assets/logo.png"),
    ),
  ),
)
  );
  }
}