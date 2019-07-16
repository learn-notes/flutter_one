import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/flutter_initial.dart';

import 'flutter_cookbook.dart';
import 'flutter_demo.dart';
import 'flutter_recognize.dart';
import 'utils/layout_padding.dart';

///
/// flutter首页
///
/// @author : Joh Liu
/// @date : 2019/6/20 18:01
///
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '首页',
      home: new Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          centerTitle: true,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        /// flutter 初识
        LayoutPadding.layout(
          RaisedButton(
              child: Text('flutter 初识'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Initial()));
              }),
        ),

        /// flutter 再探
        LayoutPadding.layout(
          RaisedButton(
              child: Text('flutter 再探'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Recognize()));
              }),
        ),

        /// flutter Demo
        LayoutPadding.layout(
          RaisedButton(
              child: Text('flutter Demo'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FlutterDemo()));
              }),
        ),

        /// flutter 实用教程
        LayoutPadding.layout(
          RaisedButton(
              child: Text('flutter 实用教程'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CookBook()));
              }),
        ),
      ],
    );
  }
}
