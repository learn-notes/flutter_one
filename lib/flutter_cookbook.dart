import 'package:flutter/material.dart';

import 'cookbook/01_animation_01.dart';
import 'cookbook/01_animation_02.dart';
import 'cookbook/01_animation_03.dart';
import 'cookbook/02_design_01.dart';
import 'cookbook/02_design_02.dart';
import 'cookbook/02_design_03.dart';
import 'cookbook/02_design_04.dart';
import 'utils/layout_padding.dart';

///
/// flutter 实用教程
///
/// @author : Joh Liu
/// @date : 2019/7/10 16:04
///
class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter 实用教程'),
        centerTitle: true,
      ),
      body: CookBody(),
    );
  }
}

class CookBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CookBodyState();
  }
}

class _CookBodyState extends State<CookBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ///============================ 动画 ==================================///
        /// 转场动画
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Animation_转场动画'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AnimationOne()));
              }),
        ),

        /// 渐变动画
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Animation_渐变动画'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AnimationTwo()));
              }),
        ),

        /// 淡入淡出
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Animation_淡入淡出'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AnimationThree()));
              }),
        ),

        ///============================ design ==================================///
        /// 使用字体包
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_使用字体包'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignOne()));
              }),
        ),

        /// 统一颜色和字体风格
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_Theme'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignTwo()));
              }),
        ),

        /// Tab使用
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_Tab'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignThree()));
              }),
        ),

        /// SnackBar
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_SnackBar'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignFour()));
              }),
        ),
      ],
    );
  }
}
