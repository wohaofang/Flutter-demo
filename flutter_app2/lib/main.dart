import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: ProductList(
        prodcuts:List.generate(20, (i)=>Product('s商品 $i','这是一个商品详情 $i'))
      ),
  ));
}

class Product{
  final String title;
  final String desc;
  Product(this.title,this.desc);
}

class ProductList extends StatelessWidget {
  final List<Product> prodcuts;

  ProductList({Key key,@required this.prodcuts}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductList'),
      ),
      body: ListView.builder(
        itemCount: prodcuts.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(prodcuts[index].title),
            onTap: (){},
          );
        },
      ),
    );
  }
}


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: new AppBar(
          title: Text('导航页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('查看商品详情页'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> new SecondScreen()
              ));
            },
          ),
        ),
    );
  }
}



class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('DM商品详情页'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

