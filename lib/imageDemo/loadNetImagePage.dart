import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

const int loadNormalImg = 0;
const int loadImgWithCache = 1;
const int loadImgWithFade = 2;

const String imgNormalUrl =
    'http://imgcache.qq.com/fm/photo/album/rmid_album_720/c/v/0034MH9R1y9Zcv.jpg?time=1508847756';

class LoadNetImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoadNetImageState();
  }
}

class _LoadNetImageState extends State<LoadNetImagePage> {
  int curLoadWay = loadNormalImg;

  String curImageUrl = imgNormalUrl;

  _loadNormalImg() {
    curLoadWay = loadNormalImg;
    curImageUrl = imgNormalUrl;
    setState(() {});
  }

  _loadImgWithCache() {
    curLoadWay = loadImgWithCache;
    curImageUrl = imgNormalUrl;
    setState(() {});
  }

  _loadImgWithFade() {
    curLoadWay = loadImgWithFade;
    curImageUrl = imgNormalUrl;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        key: new PageStorageKey(_LoadNetImageState),
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
            child: new RaisedButton(child: new Text('加载普通图片'), onPressed: _loadNormalImg),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
            child: new RaisedButton(child: new Text('加载缓存图片'), onPressed: _loadImgWithCache),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: new RaisedButton(child: new Text('淡入动画加载图片'), onPressed: _loadImgWithFade),
          ),
          new ImageView(curImageUrl, curLoadWay),
        ],
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  final String imgUrl;

  final int loadWay;

  ImageView(this.imgUrl, this.loadWay);

  @override
  Widget build(BuildContext context) {
    Widget widget = new Icon(Icons.error);

    switch (loadWay) {
      case loadNormalImg:
        widget = new Image.network(imgUrl);
        break;
      case loadImgWithCache:
        widget = new CachedNetworkImage(
          imageUrl: imgUrl,
          placeholder: new RefreshProgressIndicator(),
          errorWidget: new Icon(Icons.error),
        );
        break;
      case loadImgWithFade:
        widget = new FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, image: imgUrl);
        break;
    }

    return widget;
  }
}
