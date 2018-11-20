import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/imageDemo/loadLocalImagePage.dart';
import 'package:flutter_app/imageDemo/loadNetImagePage.dart';

const List<String> tabs = ['本地加载','网络加载'];

class ImagePage extends StatefulWidget {

  ImagePage({Key key, this.title}) :super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  _ImageState createState() => new _ImageState();
}

class _ImageState extends State<ImagePage>  with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final physicalSize = window.physicalSize;
    final width = physicalSize.width;
    return new Scaffold(
      appBar: new AppBar(
        title: new TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: tabs.map((String title) {return new Tab(text: title,);}).toList(),
        ),
      ),
      body: /*new Center(child: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Image.network("https://github.com/fluidicon.png",width: 50.0,height: 50.0, scale: 0.8,),
          new Image.asset("images/ic_assignment_ind_36pt.png",width: 50.0,height: 50.0,fit: BoxFit.fill)
        ],
      ),),*/
      new TabBarView(
          controller: _tabController,
          children: [
            new LoadLocalImagePage(),
            new LoadNetImagePage(),
          ])
    );
  }

}