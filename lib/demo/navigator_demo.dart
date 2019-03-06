import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialPagePushNameDemo();
  }
}

class MaterialPagePushDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          //显示并排显示的内容
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 没有任何样式的按钮
            FlatButton(
              onPressed: null,
              child: Text("Home"),
            ),
            FlatButton(
              child: Text("About"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    //构建屏幕上要显示的东西
                    builder: (BuildContext context) => Page(title: "About"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class MaterialPagePushNameDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          //显示并排显示的内容
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 没有任何样式的按钮
            FlatButton(
              onPressed: null,
              child: Text("Home"),
            ),
            FlatButton(
              child: Text("About"),
              onPressed: (){
                 Navigator.pushNamed(context, "/about");//第二个参数，路由的名字
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget{
  final String title;
  Page({
    this.title
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back), //button显示的东西
          onPressed: (){
             Navigator.pop(context);
          },
      ),
    );
  }
}