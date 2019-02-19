import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarDemoState();
  }
}
class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{
  int _currentIndex =0;
  void _onTapHandler(int index){
      setState(() {
        _currentIndex = index;
      });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black, //激活状态下的背景颜色
      currentIndex: _currentIndex, //控制激活状态的属性
      onTap: _onTapHandler, //点击事件的回调
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text("Explore"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text("History"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text("List"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("My"),
        ),
      ],
    );
  }
}