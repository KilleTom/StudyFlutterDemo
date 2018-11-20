import 'dart:ui';

import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TextPageState createState() => new _TextPageState();
}

class _TextPageState extends State<TextPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final physicalSize = window.physicalSize;
    final width = physicalSize.width;
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
            // Column is also layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug paint" (press "p" in the console where you ran
            // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
            // window in IntelliJ) to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new GestureDetector(
                  onTap: _click,
                  child: new Container(
                      width: width,
                      child: new Text("普通文本居中", textAlign: TextAlign.center)
                      /*   new Container()*/
                      )),
              new Text(
                '红色+黑色删除线+25号',
                style: new TextStyle(
                  color: const Color(0xffff0000),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: const Color(0xff000000),
                  fontSize: 25.0,
                ),
              ),
              new Text(
                '橙色+下划线+24号',
                style: new TextStyle(
                  color: const Color(0xffff9900),
                  decoration: TextDecoration.underline,
                  fontSize: 24.0,
                ),
              ),
              new Text(
                '虚线上划线+23号+倾斜',
                style: new TextStyle(
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed,
                  fontSize: 23.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              new Text(
                '24号+加粗',
                style: new TextStyle(
                  fontSize: 23.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 6.0,
                ),
              ),
              new RichText(
                  text: TextSpan(
                      text: "this is",
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'bol',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(text: 'text. '),
                    TextSpan(
                      text: 'This is ',
                    ),
                    TextSpan(
                        text: 'larger ',
                        style: TextStyle(fontSize: 22.0)),
                    TextSpan(
                      text: 'font size.',
                    ),
                    TextSpan(
                      text: 'This is ',
                    ),
                    TextSpan(text: 'red ',
                        style: TextStyle(color: Colors.red)),
                    TextSpan(
                      text: 'color.',
                    ),
                  ]))
            ]),
      ),
    );
  }

  void _click() {

    print("onClick");
  }
}
