import 'package:flutter/material.dart';

class SignupView extends StatefulWidget{
  const SignupView({super.key});

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView>{

  void test(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: 
          SizedBox(
            width:300,
            height:300,
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬 추가
                crossAxisAlignment: CrossAxisAlignment.start, // 가로 방향도 중앙 정렬
                children: [
                  const Text("회원가입"),
                  const SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬 추가
                      crossAxisAlignment: CrossAxisAlignment.start, // 가로 방향도 중앙 정렬
                      children:[
                        SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Insert Your ID',
                          )),
                      ),
                      const SizedBox(width: 10,),
                      ElevatedButton(onPressed: test, child: Text("중복확인"))
                      ]
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Insert Your PASSWORD',
                      )),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width:300,
                    child:
                    ElevatedButton(onPressed: test, child: Text("회원가입")),
                  )
                  ]
              ),
          )
        ),
    );
  }

}