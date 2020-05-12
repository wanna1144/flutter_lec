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

enum Gender{MAN, WOMEN}

class _MyHomePageState extends State<MyHomePage> {

  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
        //선택 그룹 중 하나를 선택할 때 사용하는 위젯.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('여자'),
                leading: Radio( //leading은 체크 대상의 모양
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('남자'),
                leading: Radio( //leading은 체크 대상의 모양
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value){
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              RadioListTile(
                title: Text('WOMEN'),

                value: Gender.WOMEN,
                groupValue: _gender,
                onChanged: (value){
                  setState(() {
                    _gender = value;
                  });
                },

              ),
              RadioListTile(
                title: Text('MEN'),
                value: Gender.MAN,
                groupValue: _gender,
                onChanged: (value){
                  setState(() {
                    _gender = value;
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

