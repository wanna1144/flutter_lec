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
          child: Text('Grid View'),
        ),
      ),
      body:GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 1,
        // Generate 100 widgets that display their index in the List.
        children: <Widget>[
          Container(
            color: Colors.red,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
