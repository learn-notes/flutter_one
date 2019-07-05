import 'package:flutter/material.dart';

import 'initial/demo1_button.dart';
import 'initial/demo2_text.dart';
import 'initial/demo3_image.dart';
import 'initial/demo4_layout.dart';
import 'initial/demo5_container.dart';
import 'initial/demo6_listView.dart';
import 'initial/demo7_gesture.dart';
import 'initial/demo8_animate.dart';
import 'initial/demo9_page.dart';
import 'utils/layout_padding.dart';

///
/// flutter初识
/// 该部分案例是根据系列博客学习过程中敲的代码，
/// 通过此系列博客的学习后只是对flutter有了大概的了解
///
/// @author : Joh Liu
/// @date : 2019/6/20 18:01
///
class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter 初识'),
        centerTitle: true,
      ),
      body: InitialBody(),
    );
  }
}

class InitialBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InitialBodyState();
  }
}

class _InitialBodyState extends State<InitialBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        /// Button 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Button案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ButtonDemo()));
              }),
        ),

        /// Text 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Text案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => TextDemo()));
              }),
        ),

        /// Image 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Image案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ImageDemo()));
              }),
        ),

        /// Layout 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Layout案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LayoutDemo()));
              }),
        ),

        /// Container 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Container案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ContainerDemo()));
              }),
        ),

        /// ListView 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('ListView案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListViewDemo()));
              }),
        ),

        /// 手势 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('手势案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GestureDemo()));
              }),
        ),

        /// 动画 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('动画案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AnimateDemo()));
              }),
        ),

        /// 页面 案例
        LayoutPadding.layout(
          RaisedButton(
              child: Text('页面案例'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => PageDemo()));
              }),
        ),
      ],
    );
  }
}
