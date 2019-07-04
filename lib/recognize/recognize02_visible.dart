import 'package:flutter/material.dart';
import 'package:flutter_one/utils/layout_padding.dart';

///
/// Visible 替代
/// flutter中无法直接对某个Widget设置Visible属性来控制是否显示，
/// 但是我们可以通过bool类型的值来控制Widget是否创建，从而达到控制显示的效果
///
/// @author : Joh Liu
/// @date : 2019/7/4 16:41
///
class VisibleDemo extends StatefulWidget {
  @override
  _VisibleDemoState createState() {
    return _VisibleDemoState();
  }
}

class _VisibleDemoState extends State<VisibleDemo> {
  String showText = '隐藏字体';
  bool isShow = true;

  void _setVisible() {
    setState(() {
      isShow = !isShow;
      isShow ? showText = '隐藏字体' : showText = '显示字体';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visible 替代'),
        centerTitle: true,
      ),
      body: LayoutPadding.Layout(
        ListView(
          children: <Widget>[
            if (isShow) Text('I Like Flutter.'),
            RaisedButton(child: Text(showText), onPressed: _setVisible),
          ],
        ),
      ),
    );
  }
}
