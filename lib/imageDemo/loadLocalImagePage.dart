import 'package:flutter/material.dart';

class LoadLocalImagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoaclImageState();
  }

}

class _LoaclImageState extends State<LoadLocalImagePage>{

  @override
  Widget build(BuildContext context) {
     return new Scaffold(
    body: new ListView(
    key: new PageStorageKey(_LoaclImageState),
    children: <Widget>[
    new Image.asset('images/ic_assignment_ind_36pt.png',fit: BoxFit.fill),
    new Image.asset("images/grill.gif",fit: BoxFit.fill)
    ],
    ),
    );
  }

}