import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:law_alarm_front/views/login_google.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ 반드시 필요!
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: LoginGoogle(),
    );
  }
}