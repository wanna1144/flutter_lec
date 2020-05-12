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

  final _valueList = ['First', 'Second', 'Third'];
  var _selectedValue = 'First';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
        //다이알로그는 사용자의 확인을 요구하거나 메시지를 표시하는 용도로 사용되는 위젯.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Show Alert'),
                onPressed: (){
                  showAlertDialog();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog() async{ //async:비동기, sync:동기 / 비동기는 Ajex처럼 화면 갱신안되고 필요부분만 바뀌는거 동기는 화면자체가 갱신되는거.
    return showDialog(
        context: context,
        barrierDismissible: false, //사용자가 다이얼로그 바깥을 터치하면 닫히지 않음.
        builder: (BuildContext context){
          return AlertDialog( //alert 창의 디자인에 관한 함수
            title: Text('Dialog Box'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Alert Dialog'),
                  Text('Press OK'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton( //FlatButton은 글자만 있는 버튼 / raisedButton은 입체모양 버튼
                child: Text('OK'),
                onPressed: (){
                  Navigator.of(context).pop(); //누르면 원래 창으로 돌아감
                },
              )
            ],
          );
        }
    );
  }

}

