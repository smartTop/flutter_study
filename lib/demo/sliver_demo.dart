import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Scaffold 小部件提供了一个界面的结构
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//           title: Text("NINGHAO"),
//            pinned: true, //固定在顶部
             floating: true, //效果会马上显示出来
            expandedHeight: 178.0, //设置一个伸展的高度
            flexibleSpace: FlexibleSpaceBar( //设置一个弹性空间
              title: Text("Ninghao Flutter".toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing:  3.0,//字间距
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3327849645,2696105688&fm=26&gp=0.jpg",fit: BoxFit.cover,),

            ),
          ),
          SliverSafeArea( //把内容显示在安全的区域内
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          ),

        ],
      ),
    );
  }
}


class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
      //构建网格视图里的项目
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 32.0),
            child: Material(
              elevation: 14.0,
              shadowColor: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12.0),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 32.0,
                      left: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            posts[index].author,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white
                            ),
                          ),
                        ],
                      )

                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),

    );
  }
}


class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      //构建网格视图相关的东西
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      //构建网格视图里的项目
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),

    );
  }
}
