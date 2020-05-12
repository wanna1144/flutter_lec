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
        title: Text('Floating Action Button'),
        //입체감있는 둥근 버튼 위젯
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

