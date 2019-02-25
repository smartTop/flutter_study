import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//把主轴剩余空间平均的分配给小部件之间
//      mainAxisAlignment: MainAxisAlignment.spaceAround,//把主轴剩余空间分配给小部件周围
//      mainAxisAlignment: MainAxisAlignment.spaceBetween,//把主轴剩余空间分配给小部件之间

//      crossAxisAlignment: CrossAxisAlignment.stretch, //拉伸
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
//        StackDemo();
      //设置子部件宽高比，会用子部件最大的宽度，根据设置的宽高比，去调整部件的高度。
//        AspectRationDemo(),

      ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200.0,
            maxWidth: 200.0,
          ),
          child: Container(
            color: Color.fromRGBO(3, 54, 255, 1.0),
          ),
      ),

      ],
    );
  }


}
class AspectRationDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //设置子部件宽高比，会用子部件最大的宽度，根据设置的宽高比，去调整部件的高度。
    return AspectRatio(
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
      aspectRatio: 16.0/9.0,
    );
  }
}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0),
                ],
              ),
            ),
            child: Icon(
                Icons.brightness_2, color: Colors.white, size: 32.0),
          ),
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
          right: 20.0,
          top: 20.0,
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
          right: 60.0,
          top: 80.0,
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 20.0),
          right: 20.0,
          top: 120.0,
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
          right: 70.0,
          top: 180.0,
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0),
          right: 30.0,
          top: 230.0,
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
          right: 90.0,
          bottom: 20.0,
        ),
        Positioned(
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0),
          right: 4.0,
          bottom: -4.0,
        ),

      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}