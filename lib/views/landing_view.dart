import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:law_alarm_front/views/login_view.dart';

class LandingView extends StatefulWidget{
  const LandingView({super.key});
  
  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView>{
  @override
  void initState(){
    Timer(Duration(seconds: 1),(){
      Get.to(LoginView());
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