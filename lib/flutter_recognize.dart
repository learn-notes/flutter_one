import 'package:flutter/material.dart';

import 'recognize/recognize01_widget.dart';
import 'recognize/recognize02_visible.dart';
import 'recognize/recognize03_thread.dart';
import 'recognize/recognize04_asset.dart';
import 'recognize/recognize05_lifecycle.dart';
import 'recognize/recognize06_inputtext.dart';
import 'utils/layout_padding.dart';

///
/// flutter再探
/// 对flutter的最初了解是通过网上系列博客的学习，
/// 完成后发现对flutter的兴趣大增，故此部分是对官方文档的学习记录
///
/// @author : Joh Liu
/// @date : 2019/7/4 16:04
///
class Recognize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter 再探'),
        centerTitle: true,
      ),
      body: RecognizeBody(),
    );
  }
}

class RecognizeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RecognizeBodyState();
  }
}

class _RecognizeBodyState extends State<RecognizeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        /// Widget 说明
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Widget 说明'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => WidgetDemo()));
              }),
        ),

        /// Visible 替代
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Visible 替代'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => VisibleDemo()));
              }),
        ),

        /// 异步UI（runOnUiThread 替代）
        LayoutPadding.layout(
          RaisedButton(
              child: Text('异步UI'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ThreadDemo()));
              }),
        ),

        /// 资源文件
        LayoutPadding.layout(
          RaisedButton(
              child: Text('资源文件'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AssetsDemo()));
              }),
        ),

        /// 生命周期
        LayoutPadding.layout(
          RaisedButton(
              child: Text('生命周期'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => LifecycleDemo()));
              }),
        ),

        /// 输入文本
        LayoutPadding.layout(
          RaisedButton(
              child: Text('输入文本'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => InputText()));
              }),
        ),
      ],
    );
  }
}
