import 'dart:math';

import 'package:flutter/material.dart';

///
/// 渐变动画
/// ### 通过动态改变按钮的 长宽、背景色、边框 三属性来演示渐变
///
/// @author : Joh Liu
/// @date : 2019/7/11 11:46
///
class AnimationThree extends StatefulWidget {
  @override
  _AnimationThreeState createState() {
    return _AnimationThreeState();
  }
}

class _AnimationThreeState extends State<AnimationThree> {
  bool _visible = true;
  double _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('渐变动画'),
      ),
      body: ListView(
        children: <Widget>[
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.cyan,
            ),
          ),
          Text('空间撒谎的符合欧IP时间戳是哦撒旦教佛一'),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: _width,
            height: _width,
            color: Colors.cyan,
//            decoration: BoxDecoration(
//              color: _color,
//              borderRadius: _borderRadius,
//            ),
            /// 渐渐淡出 Curves.easeOut
            /// 快出渐入: Curves.fastOutSlowIn,
            /// 果冻效果: Curves.bounceOut,
            /// 缓慢效果: Curves.decelerate,
            /// 极慢效果: Curves.slowMiddle,
            curve: Curves.easeOut,
          ),
          Text('空间撒谎的符合欧IP时间戳是哦撒旦教佛一'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            _visible = !_visible;

            _width == 200.0 ? _width = 0 : _width = 200.0;
          });
        },
      ),
    );
  }
}
