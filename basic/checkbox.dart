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

  var _isChecked = false;
  var _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
        //설정 화면 등에 많이 사용하는 체크박스, 스위치 버튼을 표현하는 위젯.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (value){
                  setState(() { //setState((){});상태가 변화할때 쓰는 함수?
                    _isChecked = value;
                  });
                },
              ),
              SizedBox(height: 40.0,),
              Switch(
                value: _isSwitch,
                onChanged: (value){
                  setState(() {
                    _isSwitch = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

