import 'package:flutter/material.dart'; //기본적으로 항상 설치해야 하는 패키지
import 'dart:math';

//1.nextInt(200) : 0 ~ 199 사이의 랜덤값 정수로 변환
//2. toDouble() : 정수를 실수로 변환 (199 => 199.0)

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

  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
        //Container과 쓰임새는 비슷하지만  duration, curve 등의 애니메이션 관련 프로퍼티를 사용할 수 있음
        //duration은 필수이며 애니메이션되는 데 걸리는 시간임. curve 클래스에는 미리 정의도니 여러 애니메이션 효과가 들어있음.
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            final random = Random();
            setState(() {
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width:_size,
            height: _size,
            child: Image.asset('assets/product_01.jpg'),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}



