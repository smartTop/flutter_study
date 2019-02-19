import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study/sample_page.dart';
import './drawer_demo.dart';
import './bottom_navigation_bar_demo.dart';
import 'model/post.dart';


//void main() => runApp(new MyApp7(
//  items: new List<String>.generate(1000, (i)=>"Item $i"),
//));

void main() => runApp(new MyApp19());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter "),
        ),
        body: Center(
          child: Text("Hello Huanghaojie，非常喜欢前端技术,并且愿意为此奋斗一生。有奉献精神",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 0, 0),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("HHJ"),
        ),
        body: Center(
          child: Container(
            child: new Text("Hello HHj", style: TextStyle(fontSize: 40)),
            alignment: Alignment.topLeft,
            width: 500,
            height: 400,
            padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
            margin: const EdgeInsets.all(10),
            decoration: new BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple
                    ]),
                border: Border.all(width: 5, color: Colors.red)
            ),
          ),

        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcom to HHJ"),
        ),
        body: Center(
          child: Container(
            child: new Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546436580633&di=ce2c9523957fa9255672184403a16c37&imgtype=0&src=http%3A%2F%2Fimg1.juimg.com%2F140924%2F330661-1409240K15850.jpg",
              color: Colors.greenAccent, //要混合的颜色，如果你只设置color是没有意思的
              colorBlendMode: BlendMode.darken, //混合模式，相当于我们如何混合
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.cover,
            ),

          ),

        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Wdlcom to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcom to ListView Widget"),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_time),
              title: new Text("access_time"),
            ),
            new ListTile(
              leading: Icon(Icons.account_balance),
              title: new Text("account_balance"),
            ),
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text("ac_unit"),
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text("access_alarm"),
            ),
            new ListTile(
              leading: new Icon(Icons.accessibility),
              title: new Text("accessibility"),
            ),
            new ListTile(
              leading: new Icon(Icons.accessibility_new),
              title: new Text("accessibility_new"),
            ),
            new ListTile(
              leading: new Icon(Icons.accessible),
              title: new Text("accessible"),
            ),
            new ListTile(
              leading: new Icon(Icons.accessible_forward),
              title: new Text("accessible_forward"),
            ),
            new ListTile(
              leading: new Icon(Icons.account_balance_wallet),
              title: new Text("account_balance_wallet"),
            ),
            new ListTile(
              leading: new Icon(Icons.account_box),
              title: new Text("account_box"),
            ),
            new ListTile(
              leading: new Icon(Icons.account_circle),
              title: new Text("account_circle"),
            ),
            new Image.network(
                "http://s1.sinaimg.cn/bmiddle/0031qr8Wgy710iXuaKk60&690"
            ),
            new Image.network(
                "http://5b0988e595225.cdn.sohucs.com/images/20180709/5abc5d731eca4f3a9f4a2b40b6801fbf.jpeg"
            ),
            new Image.network(
                "http://img.douxie.cn/upload/news/1202/1329371647_mr15no40ix.jpg"
            ),


          ],
        ),


      ),
    );
  }
}


class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: new Text("ListView horzontal"),
        ),
        body: Center(
          child: Container(
            height: 200,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  width: 180,
                  color: Colors.lightBlue,
                ),
                new Container(
                  width: 180,
                  color: Colors.amber,
                ),
                new Container(
                  width: 180,
                  color: Colors.deepOrange,
                ),
                new Container(
                  width: 180,
                  color: Colors.deepOrangeAccent,
                )
              ],
            ),


          ),

        ),

      ),
    );
  }
}

class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "ListView Widget",
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            child: MyListView(),
          ),
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180,
          color: Colors.amber,
        ),
        new Container(
          width: 180,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180,
          color: Colors.deepOrangeAccent,
        )
      ],
    );
  }
}


class MyApp7 extends StatelessWidget {
  final List<String> items;

  MyApp7({Key key, @required this.items}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Flutter Listview",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("ListView Widger"),
        ),
        body: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Text("${items[index]}"),
              );
            }

        ),
      ),
    );
  }
}

class MyApp8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "电影海报实例",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("电影海报实例"),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 3,
          crossAxisCount: 3,
          children: <Widget>[
            new Text("I Love SUN"),
            new Text("I Love SUN"),
            new Text("I Love SUN"),
            new Text("I Love SUN"),
            new Text("I Love SUN"),
            new Text("I Love SUN"),
            new Text("I Love SUN"),
            new Text("I Love SUN"),
          ],
        ),
      ),
    );
  }
}

class MyApp9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "电影海报实例",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("电影海报实例"),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2,
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            childAspectRatio: 0.7,
          ),

          children: <Widget>[
            Image.network(
                "http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg",
                fit: BoxFit.cover),
            Image.network(
                "http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg",
                fit: BoxFit.cover),
          ],),

      ),
    );
  }
}

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Row widget Demo",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("不灵活水平方向布局"),
        ),
        body: new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                print("点击了红色按钮事件");
              },
              color: Colors.redAccent,
              child: new Text("Red Button"),
            ),
            new RaisedButton(
              onPressed: () {
                print("点击了黄色按钮事件");
              },
              color: Colors.orangeAccent,
              child: new Text("orange Button"),
            ),
            new RaisedButton(
              onPressed: () {
                print("点击了蓝色按钮事件");
              },
              color: Colors.blueAccent,
              child: new Text("blue Button"),
            ),

          ],
        ),
      ),
    );
  }
}

class MyApp11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Row widget Demo",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("灵活水平方向布局"),
        ),
        body: new Row(
          children: <Widget>[
            Expanded(child: new RaisedButton(
              onPressed: () {
                print("点击了红色按钮事件");
              },
              color: Colors.redAccent,
              child: new Text("Red Button"),
            )
            ),
            Expanded(child: new RaisedButton(
              onPressed: () {
                print("点击了黄色按钮事件");
              },
              color: Colors.orangeAccent,
              child: new Text("Red Button"),
            )
            ),
            Expanded(child: new RaisedButton(
              onPressed: () {
                print("点击了蓝色按钮事件");
              },
              color: Colors.blueAccent,
              child: new Text("Red Button"),
            )
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Row widget Demo",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("不灵活水平方向布局"),
        ),
        body: new Row(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                print("点击了红色按钮事件");
              },
              color: Colors.redAccent,
              child: new Text("Red Button"),
            ),
            Expanded(child: new RaisedButton(
              onPressed: () {
                print("点击了黄色按钮事件");
              },
              color: Colors.orangeAccent,
              child: new Text("orange Button"),
            ),),
            new RaisedButton(
              onPressed: () {
                print("点击了蓝色按钮事件");
              },
              color: Colors.blueAccent,
              child: new Text("blue Button"),
            ),

          ],
        ),
      ),
    );
  }
}

class MyApp13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Column widget Demo",
      home: Scaffold(
          appBar: new AppBar(
            title: new Text("垂直方向布局"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("I am HuangHaojie"),
                Expanded(child: Text("I am HuangZhi")),
                Text("I am FengXiaoPeng"),
              ],
            ),
          )
      ),
    );
  }
}

class MyApp14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var stack = new Stack(
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              "http://pic1.win4000.com/pic/6/a1/e60e51a48c.jpg"),
          radius: 100,
        ),
        new Positioned(
          top: 10,
          left: 60,
          child: new Text("Huanghaojie"),
        ),
        new Positioned(
          bottom: 10,
          right: 50,
          child: new Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(5),
            child: new Text("Huanhaojie"),
          ),
        ),

      ],
    );
    return new MaterialApp(
      title: "Stack Widget Demo",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Stack 布局"),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}

class MyApp15 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "吉林省吉林市昌邑区", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("技术群:1234567890"),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(
            color: Colors.orangeAccent,
          ),
          ListTile(
            title: Text(
              "北京市海淀区中国科技大学院内", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("技术群:1234567890"),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
          new Divider(
            color: Colors.orangeAccent,
          ),
          ListTile(
            title: Text(
              "河南市濮阳市百姓办公楼", style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("技术群:1234567890"),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue,),
          ),
        ],
      ),
    );
    // TODO: implement build
    return new MaterialApp(
      title: "卡片组件布局",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("卡片组件布局"),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}

class MyApp16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "获取手机里的电量",
      home: Scaffold(
        body: new SampleAppPage(title: ""),
      ),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  final String title;

  SampleAppPage({Key key, this.title}) : super(key: key);

  @override
  _SampleAppPageState createState() {
    // TODO: implement createState
    return new _SampleAppPageState();
  }


}

class _SampleAppPageState extends State<SampleAppPage> {
  static const platform = const MethodChannel('samples.flutter.io/battery');
  String _batteryLevel = 'Unknown battery level.';

  Future<Null> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("获取手机里的电量"),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                child: new Text("Get Battery Level"),
                onPressed: _getBatteryLevel,
              ),
              new Text(_batteryLevel)
            ],

          ),
        ),
      ),
    );
  }
}

class MyApp17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
      home: new MyHomePage(title: "Flutter Demo"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("You have pushed the button this many times:"),
            new Text("$_counter", style: Theme
                .of(context)
                .textTheme
                .display1,),
            new GestureDetector(
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new SamplePage()));
              },
              child: new Text("点击我跳转到Sample页面",
                style: new TextStyle(fontSize: 26.0, color: Colors.red),),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "Increment",
        child: new Icon(Icons.add),
        onPressed: _incrementCounter,),
    );
  }
}

class MyApp18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "HuangHaojie",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//按钮按下的背景颜色
        splashColor: Colors.white70,//水泼纹的颜色
      ),
      home: Home2(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        title: Text("NINGHAO"),
        elevation: 0.0,
        leading: new IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigration",
            onPressed: () => debugPrint("Navigration button is press")),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Search button is press")),
          new IconButton(
              icon: Icon(Icons.more_horiz),
              tooltip: "more_horiz",
              onPressed: () => debugPrint("more_horiz button is press")),
        ],
      ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(
              "http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg"),
          SizedBox(height: 16.0),
          Text("huanghaojie $index", style: Theme
              .of(context)
              .textTheme
              .title),


        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: 3,
      itemBuilder: _listItemBuilder,
    );
  }
}

class Home2 extends StatelessWidget {

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
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
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

class MyApp19 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeDemo(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}
class HomeDemo extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0,),
        ],
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("NINGHAO"),
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
      ),
    );
  }
}



