import 'package:flutter/material.dart'; //기본적으로 항상 설치해야 하는 패키지

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Fluttter Lecture',
      theme: ThemeData( //자동으로 생성되는 앱바 등 테마 색 지정
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(), //여기에 간단히 지정하고 아래 따로 선언해서 사용
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
        //글자를 입력받는 위젯. InputDecoration 클래스와 함께 사용하면 힌트 메시지나 외곽선 등를 꾸밀 수 있음
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(),
              SizedBox(height: 20,), //margin 대신 박스로 공간을 만들어줌
              TextField(
                decoration: InputDecoration(
                    labelText: '여기에 입력해 주세요'
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: '여기에 입력해 주세요',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

