import "package:flutter/material.dart";

void main() => runApp(MyApp(
  items: new List<String>.generate(100, (i)=> "item $i")
));

class MyApp extends StatelessWidget{

  final List<String> items;
  MyApp({Key key, @required this.items}):super(key:key);

  @override

  Widget build (BuildContext content){
    return MaterialApp(
      title: 'hello flutter',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Widget'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (content,index){
            return new ListTile(
              title:new Text('${items[index]}')
            );
          },
        )
      ),
    );
  }
}

class MyCenter extends StatelessWidget{
  @override
  Widget build(BuildContext content){
    return Center(
      child: Container(
        height: 200.0,
        child: MyList1(),
      ),
    );
  }
}


class MyList1 extends StatelessWidget{

  @override
  Widget build(BuildContext content){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 200.0,
          height: 200.0,
          color: Colors.greenAccent,
        ),
        new Container(
          height: 200.0,
          width: 200.0,
          color: Colors.pink,
        ),
        new Container(
          height: 200.0,
          width: 200.0,
          color: Colors.blueAccent,
        ),
        new Container(
          height: 200.0,
          width: 200.0,
          color: Colors.redAccent,
        )
      ],
    );
  }
}


class MyList2 extends StatelessWidget{

  @override
  Widget build(BuildContext content){
    return ListView(
      children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.android),
              title: new Text('android')
            ),
             new ListTile(
              leading: new Icon(Icons.announcement),
              title: new Text('announcement')
            ),
             new ListTile(
              leading: new Icon(Icons.arrow_back_ios),
              title: new Text('arrow_back_ios')
            ),
            new Image.network(
              'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg',
              repeat: ImageRepeat.repeat,
              ),
            new Image.network('https://img.mukewang.com/5b6947970001d34d06000338-240-135.jpg'),
            new Image.network('https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg'),
            new Image.network('https://img.mukewang.com/5b6947970001d34d06000338-240-135.jpg'),
          ],
    );
  }
}