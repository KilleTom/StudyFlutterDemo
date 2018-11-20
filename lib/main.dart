import 'package:flutter/material.dart';
import 'package:flutter_app/imageDemo/imagePage.dart';
import 'package:flutter_app/textPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new ListView(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TextPage(title: 'Flutter Demo Text Page')));
            },
            highlightElevation: 40.0,
            disabledElevation: 12.0,
            color: Colors.cyan,
            textColor: Colors.white,
            splashColor: Colors.tealAccent,
            child: Text("文本demo"),
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePage(title: 'Flutter Demo Text Page')));
            },
            highlightElevation: 40.0,
            disabledElevation: 12.0,
            color: Colors.cyan,
            textColor: Colors.white,
            splashColor: Colors.tealAccent,
            child: Text("图片demo"),
          ),
          new RaisedButton(
            //设置过渡波纹的动画时长
            animationDuration: Duration(milliseconds: 50),
            //过渡波纹动画的颜色
            splashColor: Colors.tealAccent,
            //当onPressed 为 null 则为不可点击状态
            onPressed: null,//
            //点击下的颜色
            highlightColor: Colors.blueGrey,
            //点击后变化的Z轴高度也就shape的阴影高度
            highlightElevation: 10.0,
            //可点击的颜色
            color: Colors.redAccent,
            //可点击的文本字体颜色,如果不是富文本的情况下可以这样设置单一样式颜色，如果富文本的话建议不设置
            textColor: Colors.white,
            //不可点击Z轴高度也就是shape的阴影高度
            disabledElevation: 2.0,
            //不可点击的颜色
            disabledColor: Colors.blue,
            //不可点击下的文本颜色
            disabledTextColor: Colors.white70,
            child: Text("raisedButton样式解释"),
          ),
          new RaisedButton(
            //设置过渡波纹的动画时长
            animationDuration: Duration(milliseconds: 50),
            //过渡波纹动画的颜色
            splashColor: Colors.tealAccent,
            //当onPressed 为 null 则为不可点击状态
            onPressed: null,//
            //点击下的颜色
            highlightColor: Colors.blueGrey,
            //点击后变化的Z轴高度也就shape的阴影高度
            highlightElevation: 10.0,
            //可点击的颜色
            color: Colors.redAccent,
            //可点击的文本字体颜色,如果不是富文本的情况下可以这样设置单一样式颜色，如果富文本的话建议不设置
            textColor: Colors.white,
            //不可点击Z轴高度也就是shape的阴影高度
            disabledElevation: 2.0,
            //不可点击的颜色
            disabledColor: Colors.blue,
            //不可点击下的文本颜色
            disabledTextColor: Colors.white70,
            child: Text("容器控件演示"),
          ),
        ],
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
