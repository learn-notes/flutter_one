import 'dart:math';

import 'package:flutter/material.dart';

///
/// 渐变动画
/// ### 通过动态改变按钮的 长宽、背景色、边框 三属性来演示渐变
///
/// @author : Joh Liu
/// @date : 2019/7/11 9:46
///
class AnimationTwo extends StatefulWidget {
  @override
  _AnimationTwoState createState() {
    return _AnimationTwoState();
  }
}

class _AnimationTwoState extends State<AnimationTwo> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('渐变动画'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          /// 渐渐淡出 Curves.easeOut
          /// 快出渐入: Curves.fastOutSlowIn,
          /// 果冻效果: Curves.bounceOut,
          /// 缓慢效果: Curves.decelerate,
          /// 极慢效果: Curves.slowMiddle,
          curve: Curves.bounceOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            // Create a random number generator.
            final random = Random();

            // Generate a random width and height.
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();

            // Generate a random color.
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );

            // Generate a random border radius.
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}
