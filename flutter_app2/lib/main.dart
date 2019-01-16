import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: Text('haha'),
        ),
        body: new Row(
          children: <Widget>[
           Expanded(child:new RaisedButton(
              onPressed:(){} ,
              color: Colors.redAccent,
              child: new Text('红色'),
            ), ), 
           Expanded(child:new RaisedButton(
              onPressed:(){} ,
              color: Colors.redAccent,
              child: new Text('红色'),
            ), ),
            Expanded(child:new RaisedButton(
              onPressed:(){} ,
              color: Colors.redAccent,
              child: new Text('红色'),
            ), ),
          ],
        ),
      ),
    );
  }
}


