import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:law_alarm_front/screens/login_google.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ 반드시 필요!

  Get.put(FlutterSecureStorage());

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