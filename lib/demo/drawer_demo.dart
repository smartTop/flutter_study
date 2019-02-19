import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//                DrawerHeader(
//                    child: Text("header".toUpperCase()),
//                  decoration: new BoxDecoration(
//                    color: Colors.yellow,
//                  ),
//                ),
          UserAccountsDrawerHeader(
            accountName: Text("HuangHaojie",style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text("1273436145@qq.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1548767861545&di=5854514779adebc45c6ebcd1c63cc55d&imgtype=0&src=http%3A%2F%2Fpic2.16pic.com%2F00%2F10%2F77%2F16pic_1077775_b.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1548824633262&di=d745bcce4416ff7260fca713b4d39541&imgtype=0&src=http%3A%2F%2Fpic2.16pic.com%2F00%2F10%2F77%2F16pic_1077775_b.jpg"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Message",textAlign: TextAlign.right),
            trailing: Icon(Icons.message,color: Colors.red,size: 22.0,),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text("Favorsie",textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite,color: Colors.red,size: 22.0,),
          ),
          ListTile(
            title: Text("directions",textAlign: TextAlign.right),
            trailing: Icon(Icons.directions_bike,color: Colors.red,size: 22.0,),
          ),
          ListTile(
            title: Text("setting",textAlign: TextAlign.right),
            trailing: Icon(Icons.settings,color: Colors.red,size: 22.0,),
          ),
        ],
      ),
    );
  }
}