import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SamplePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: new Text("发布成功",style: new TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
            icon: new Image.asset("assets/images/nav_close.png",),
            onPressed: (){
              Navigator.maybePop(context);//会自动进行判断pop
            }),

      ),
      body: new SamplePageContent(),

    );
  }
}
class SamplePageContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 42.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                width: 52.0,
                height: 52.0,
                margin: const EdgeInsets.only(left: 16.0),
                child: new CircleAvatar(
                  backgroundImage: new AssetImage("images/avatar2.png",),
                ),
              ),
              new Container(
                margin: const EdgeInsets.only(left: 7.0,right: 15.0),
                height: 48.0,
                child: new Stack(
                  children: <Widget>[
                    new Image.asset("assets/images/publish_chat_box.png",),
                    new Positioned(
                        left: 25.0,
                        top: 14.0,
                        child: new Text(
                          "张老师发布一个任务，请接收",
                          style: new TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

