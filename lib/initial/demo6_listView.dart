import 'package:flutter/material.dart';

import 'package:flutter_one/initial/demo6_listView_01.dart';
import 'package:flutter_one/initial/demo6_listView_02.dart';
import 'package:flutter_one/initial/demo6_listView_03.dart';
import 'package:flutter_one/utils/layout_padding.dart';

///
/// ListView列表案例
///
/// @author : Joh Liu
/// @date : 2019/6/19 17:56
///
class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView案例'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          /// 简单案例
          LayoutPadding.Layout(
            RaisedButton(
                child: Text('简单案例'),
                onPressed: () {
                  /// 页面跳转
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ListViewOneDemo()));
                }),
          ),

          /// 普通案例
          LayoutPadding.Layout(
            RaisedButton(
                child: Text('普通案例'),
                onPressed: () {
                  /// 页面跳转
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ListViewTwoDemo()));
                }),
          ),

          /// 高级案例
          LayoutPadding.Layout(
            RaisedButton(
                child: Text('高级案例'),
                onPressed: () {
                  /// 页面跳转
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ListViewThreeDemo()));
                }),
          ),
        ],
      ),
    );
  }
}
