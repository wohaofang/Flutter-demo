import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override

  Widget build (BuildContext content){
    return MaterialApp(
      title: 'hello flutter',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Widget'),
        ),
      ),
    );
  }

}