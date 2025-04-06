import 'package:flutter/material.dart';
import 'package:law_alarm_front/services/api_test.dart';
import 'package:law_alarm_front/views/signUp_view.dart';

class LoginView extends StatefulWidget{
  const LoginView({super.key});
  
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>{

  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬 추가
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 방향도 중앙 정렬
            children: [
              const Text("로그인"),
              const SizedBox(height: 10,),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Insert Your ID',
                  )),
              ),
              const SizedBox(height: 5,),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Insert Your PASSWORD',
                  )),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬 추가
                crossAxisAlignment: CrossAxisAlignment.center, // 가로 방향도 중앙 정렬
                children: [
                  ElevatedButton(
                    onPressed:(){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const SignupView(),
                        ));
                  }, 
                  child: Text("회원가입")),
                  SizedBox(width:10),
                  ElevatedButton(onPressed: login , child: Text("로그인")),
                ]
              )
            ]
            ),
        ),
      );
  }
}