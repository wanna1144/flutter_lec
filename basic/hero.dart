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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        //화면 전환시 자연스럽게 연결되는 애니메이션을 지원하는 위젯. 이전화면으로 돌아갈때도 자연스러운 애니메이션이 적용됩니다.
        //사진을 외부에서 로드시 pubspec.yaml에서 로드해야함. 주의할 점은 들여쓰기 띄어쓰기
      ),
      body: Center(
        child: GestureDetector(

          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => HeroDatailPage()),
            );
          },

          child: Hero(
            tag: 'image', //tag는 가져올 파일 형태?
            child: Image.asset('assets/product_01.jpg', width:100, height:100,),
          ),
        ),
      ),
    );
  }
}

class HeroDatailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: Hero(
        tag: 'image',
        child: Image.asset('assets/product_01.jpg'),
      ),
    );
  }
}



