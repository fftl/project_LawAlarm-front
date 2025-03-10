import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:law_alarm_front/main_page.dart';

class LandingPage extends StatefulWidget{
  const LandingPage({super.key});

  
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>{
  @override
  void initState(){
    Timer(Duration(seconds: 3),(){
      Get.to(MainPage());
    });
  }

  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          color: Colors.lime,
          child: const Center(child: Text("Landing Page..")),
        ),
      );
  }
}