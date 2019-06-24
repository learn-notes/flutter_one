import 'package:flutter/material.dart';

import 'Demo1_Button.dart';
import 'Demo2_Text.dart';
import 'Demo3_Image.dart';
import 'Demo4_Layout.dart';
import 'Demo5_Container.dart';
import 'Demo6_ListView.dart';
import 'Demo7_Gesture.dart';
import 'Demo8_Animate.dart';
import 'utils/LayoutPadding.dart';

///
/// flutter首页
///
/// @author : Joh Liu
/// @date : 2019/6/20 18:01
///
void main() => runApp(new MyApp());

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
        /// Button 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('Button案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ButtonDemo()));
              }),
        ),

        /// Text 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('Text案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => TextDemo()));
              }),
        ),

        /// Image 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('Image案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ImageDemo()));
              }),
        ),

        /// Layout 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('Layout案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LayoutDemo()));
              }),
        ),

        /// Container 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('Container案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ContainerDemo()));
              }),
        ),

        /// ListView 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('ListView案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListViewDemo()));
              }),
        ),

        /// 手势 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('手势案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GestureDemo()));
              }),
        ),

        /// 动画 案例
        LayoutPadding.Layout(
          RaisedButton(
              child: Text('动画案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AnimateDemo()));
              }),
        ),
      ],
    );
  }
}
