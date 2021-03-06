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
        body: CardWidget()
      ),
    );
  }
}

// 横向布局
class RowWidget extends StatelessWidget{
  @override

  Widget build(BuildContext content){
    return new Row(
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
        );
  }
}


// 垂直布局
class ColumnWidget extends StatelessWidget{
  @override
  Widget build(BuildContext content){
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('hahah'),
          Expanded(
            child: Text('fsdnfskjdfsdfjsdf'),
          ),
          Text('haha水电费水电费h'),
        ],
      ) 
    );
  }
}


// stack 布局
class StackWidgets extends StatelessWidget{
  @override

  Widget build(BuildContext content){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=40446802,874678123&fm=173&app=25&f=JPEG?w=218&h=146&s=165FA5641863070BF484A99703008093'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('库克 你好'),
        )
      ],
    );
    return Center(
      child: stack,
    );
  }
}


// Positioned 布局

class PositionedWidget extends StatelessWidget{

  @override
  Widget build(BuildContext content){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=40446802,874678123&fm=173&app=25&f=JPEG?w=218&h=146&s=165FA5641863070BF484A99703008093'),
          radius: 100.0,
        ),
        new Positioned(
          top: 20.0,
          left: 20.0,
          child: Text('hahaha'),
        )
      ],
    );
    return Center(
      child: stack,
    );
  }
}

// card 布局

class CardWidget extends StatelessWidget{

  @override
  Widget build(BuildContext content){
    
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('山西省 侯马市',style: TextStyle(fontWeight:FontWeight.w500)),
            subtitle: Text('丁铭 11111111111'),
            leading: new Icon(Icons.ac_unit,color:Colors.blueAccent),
          ),
          new Divider(),
          ListTile(
            title: Text('山西省 侯马市',style: TextStyle(fontWeight:FontWeight.w500)),
            subtitle: Text('丁铭 11111111111'),
            leading: new Icon(Icons.ac_unit,color:Colors.blueAccent),
          ),
          new Divider(),

          ListTile(
            title: Text('山西省 侯马市',style: TextStyle(fontWeight:FontWeight.w500)),
            subtitle: Text('丁铭 11111111111'),
            leading: new Icon(Icons.ac_unit,color:Colors.blueAccent),
          ),
          new Divider(),
        ],
      ),
    );
    return Center(
      child: card,
    );
  }
}



