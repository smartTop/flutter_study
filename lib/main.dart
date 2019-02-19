import 'package:flutter/material.dart';
import 'package:flutter_study/demo/drawer_demo.dart';
import 'package:flutter_study/demo/bottom_navigation_bar_demo.dart';
import 'demo/listview_demo.dart';
import './demo/basic_demo.dart';


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
      home: Home(),
    );
  }
}



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
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
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
//              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
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






