import 'package:flutter/material.dart';

///
/// Container设置尺寸、背景、margin
///
/// @author : Joh Liu
/// @date : 2019/6/19 11:48
///

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Container案例'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          /// 文本
          Text('文本'),

          /// 文本 + 圆角背景
          Container(
            child: Text('文本'),
            decoration: BoxDecoration(
              // 颜色
              color: Colors.grey,
              // 圆角
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),

          /// 文本居中 + 圆角背景 + 宽高 + padding
          Container(
            child: Center(
              child: Text('文本'),
            ),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(8.0),
            width: 80.0,
            height: 40.0,
            decoration: BoxDecoration(
              // 颜色
              color: Colors.grey,
              // 圆角
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ],
      ),
    );
  }
}
