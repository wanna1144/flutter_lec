import 'package:flutter/material.dart';
import 'package:navigation/secondpage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next Page'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}