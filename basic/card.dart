import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstApp(),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //탭의 갯수
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Card'),
            //카드 형태의 모양을 제공하는 위젯. 크기는 자식 엘리먼트에 따름
          ),

        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child:Card(
              elevation: 10.0,
              //elevation 그림자
              child: Container(
                width:200,
                height: 200,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                //모서리 조절
              ),
            ),
          ),
        ),
      ),
    );
  }
}
