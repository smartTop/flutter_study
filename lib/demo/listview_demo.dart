import 'package:flutter/material.dart';
import '../model/post.dart';
class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListViewInkWellDemo();
  }
}

class ListViewInkWellDemo extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
     return Container(
       color: Colors.white,
       margin: EdgeInsets.all(8.0),
       child: Stack(
         children: <Widget>[
           Column(
             children: <Widget>[
               //设置一下图像的比例
               AspectRatio(
                   aspectRatio: 16/9,
                   child: Image.network(posts[index].imageUrl,fit: BoxFit.cover),
               ),
               SizedBox(height: 16.0),
               Text(
                 posts[index].title,
                 style: Theme
                     .of(context)
                     .textTheme
                     .title,
               ),
               Text(
                 posts[index].author,
                 style: Theme
                     .of(context)
                     .textTheme
                     .subhead,
               ),
               SizedBox(height: 16.0),
             ],
           ),
           // Positioned.fill 上下左右的位置，如果不单独设置的话都是0.0
           Positioned.fill(
               child: Material(
                 color: Colors.transparent,
                 child: InkWell(
                   //带渐墨效果的区域
                   splashColor: Colors.white.withOpacity(0.3), //渐墨的颜色(慢慢展开后的颜色)
                   highlightColor: Colors.white.withOpacity(0.1),//高亮颜色(默认显示)
                   onTap: (){ //点按的回调
                     debugPrint("Tap");
                   },
                 ),
               ),
           ),
         ],
       ),
     );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
    );
  }
}



