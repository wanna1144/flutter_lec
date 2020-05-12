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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('List view'),
          //리스트를 표시하는 위젯. singlechildlistview와 listbody의 조합과 동일한 효과를 내지만 좀더 리스트에 최적화된 위젯
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            //타일 앞에 표시되는 위젯. 타일 뒤에는 trailing 위젯으로 사용 가능
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.event),
            //타일 앞에 표시되는 위젯. 타일 뒤에는 trailing 위젯으로 사용 가능
            title: Text('Event'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            //타일 앞에 표시되는 위젯. 타일 뒤에는 trailing 위젯으로 사용 가능
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
