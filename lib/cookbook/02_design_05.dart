import 'package:flutter/material.dart';

///
/// 屏幕方向
///
/// @author : Joh Liu
/// @date : 2019/7/15 9:17
///
class DesignFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('屏幕方向'),
      ),
      body: OrientationPage(),
    );
  }
}

class OrientationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      /// 屏幕方向变更监听
      child: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          var or = orientation == Orientation.portrait ? '竖屏' : '横屏';
          return Text(
            '屏幕方向：$or',
            style: TextStyle(fontSize: 26,
            color: Colors.deepOrangeAccent),
          );
        },
      ),
    );
  }
}
