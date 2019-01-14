import "package:flutter/material.dart";

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext content){
    return MaterialApp(
      title: 'Welcome to Flutter',
      home:Scaffold(
        appBar:AppBar(
          title:Text('Hello Dm'),
        ),
        body:Center(
          child:Container(
            child: new Text(
              'hello world,Dm',
              textAlign: TextAlign.left,
              // maxLines: 2,
              // overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 40.0,
                color:Color.fromARGB(255, 255, 150, 150),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            alignment: Alignment.center,
            width: 500.0,
            height: 400.0,
            color: Colors.lightBlue,
          )
        )
      )
    );
  }
}