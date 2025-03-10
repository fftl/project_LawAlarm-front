import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
      return const Scaffold(
        body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 중앙 정렬 추가
            crossAxisAlignment: CrossAxisAlignment.center, // 가로 방향도 중앙 정렬
            children: [
              Text("LOGIN CODE"),
              SizedBox(height: 10,),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Insert Your CODE',
                  )),
              ),
            ]
            ),
        ),
      );
  }
}