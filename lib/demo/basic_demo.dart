import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550582181916&di=a2edef3830ac8fb65cb3a8225fb8f87c&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F1135cd2eec2bc9c358650a486939b7d95e9feb4b87ae-ItT21I_fw658"),
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,//图像保持比例，覆盖整个容器显示
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight,
          ),

        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all( //添加边框
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid
                ),
//              borderRadius: BorderRadius.circular(16.0), //添加圆角
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),  //阴影的偏移
                  color: Color.fromRGBO(16, 20, 188, 1.0), //默认阴影的颜色是黑色
                  blurRadius: 25.0,//值越大，模糊越明显。
                  spreadRadius: -9.0,//阴影扩撒程度 值是正的 扩大阴影面积，负数 缩小阴影面积

                ),
              ],
              shape: BoxShape.circle, //形状
//              gradient: RadialGradient( //镜像渐变
//                  colors: [
//                     Color.fromRGBO(7, 102, 255, 1.0),
//                     Color.fromRGBO(3, 28, 128, 1.0),
//                   ]
//              ),
              gradient: LinearGradient( //线性渐变 默认从最左边到最右边
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,

              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
          text: "ninghao",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: ".net",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                )
            )
          ],
        )
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
      fontSize: 16.0
  );
  final String _author = "李白";
  final String _title = "将进酒";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《$_title》-- $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}