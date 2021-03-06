import 'package:flutter/material.dart';
import 'package:flutter_study/demo/drawer_demo.dart';
import 'package:flutter_study/demo/bottom_navigation_bar_demo.dart';
import 'demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "HuangHaojie",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //按钮按下的背景颜色
        splashColor: Colors.white70, //水泼纹的颜色
      ),
      initialRoute: "/",//设置一个初始的路由
      routes: {
        "/": (context) => Home(), //定义一个根路由
        "/about": (context) => Page(title: "About"), // 定义路由的时候"/"表示路由的根，或者是初始路由(默认要显示的页面)，home属性代表路由的根
      },// Map 一个名字和对应的值，名字是路由的名字，值是打开路由要显示的东西
//      home: Home(),
    );
  }
}



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: new Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text("NINFHAO"),
            elevation: 0.0,
            actions: <Widget>[
              new IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "Search",
                  onPressed: () => debugPrint("Search button is press")),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
//              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
//              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
              LayoutDemo(),
//              ViewDemo(),
              SliverDemo(),
            ],
          ),
          endDrawer: Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("This is drawer"),
              ],
            ),
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        )
    );
  }
}






