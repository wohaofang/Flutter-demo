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
            // child: new Text(
            //   'hello world,Dm',
            //   textAlign: TextAlign.left,
            //   // maxLines: 2,
            //   // overflow: TextOverflow.fade,
            //   style: TextStyle(
            //     fontSize: 40.0,
            //     color:Color.fromARGB(255, 255, 150, 150),
            //     decoration: TextDecoration.underline,
            //     decorationStyle: TextDecorationStyle.solid,
            //   ),
            // ),
            child: new Image.network(
              'http://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              scale: 2.0,
              // fit: BoxFit.contain,
              // color: Colors.greenAccent,
              // colorBlendMode: BlendMode.darken,
              repeat: ImageRepeat.repeat,
            ),
            // alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // color: Colors.lightBlue,
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors:[
                  Colors.lightBlue,
                  Colors.greenAccent,
                  Colors.pink
                ]
              )
            ),
          )
        )
      )
    );
  }
}