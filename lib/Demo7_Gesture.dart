import 'package:flutter/material.dart';

///
/// 手势案例
///
/// @author : Joh Liu
/// @date : 2019/6/20 17:35
///
class GestureDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GestureState();
  }
}

class _GestureState extends State<GestureDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手势案例'),
      ),
      body: Column(
        children: <Widget>[
          /// 普通按钮点击
          RaisedButton(
              child: Text('按钮'),
              onPressed: () {
                Navigator.pop(context);
              }),
          /// 事件监听（点击、双击、长按事件）
          GestureDetector(
            child: Text('手势'),
            onTap: () {
              print('点击手势监听事件');
            },
            onDoubleTap: () {
              print('双击手势监听事件');
            },
            onLongPress: () {
              print('长按手势监听事件');
            },
          ),
          /// 事件监听 同GestureDetector类似
          /// 不过可设置按下时的背景色，点击时的水波纹等特效
          InkWell(
            child: Container(
              child: Center(
                child: Text('手势-有水波纹'),
              ),
              width: 200.0,
              height: 200.0,
            ),
            onTap: () {
              print('点击手势监听事件-有水波纹');
            },
            // 点击按钮时水波纹的颜色
            splashColor: Colors.red,
            // 按下的颜色
            highlightColor: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
