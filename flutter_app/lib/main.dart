import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext content){
    return MaterialApp(
      title: "hahaha",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('电影海报'),
        ),
        body:GridView.count(
          // padding: const EdgeInsets.all(10.0),
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          crossAxisCount: 3,
          childAspectRatio: 1.5,
          children: <Widget>[
            new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              fit:BoxFit.cover
              ),
              new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              fit:BoxFit.cover
              ),
              new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              fit:BoxFit.cover
              ),
              new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              fit:BoxFit.cover
              ),
              new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              fit:BoxFit.cover
              ),
              new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              fit:BoxFit.cover
              ),
          ],
        )
      )
    );
  }
}