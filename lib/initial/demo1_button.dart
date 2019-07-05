import 'package:flutter/material.dart';
import 'package:flutter_one/utils/layout_padding.dart';

///
/// Button案例
///
/// @author : Joh Liu
/// @date : 2019/6/18 17:52
///
class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // bar标题
        title: Text('Button案例'),
        // 标题居中显示
        centerTitle: true,
      ),
      body: LayoutPadding.layout(
        ListView(
          children: <Widget>[
            /// 按钮（背景色、字体色、点击事件）
            RaisedButton(
              // 点击事件
              onPressed: _press1,
              // 字体
              child: Text("按钮1"),
              // 背景色
              color: Colors.amberAccent,
              // 字体色
              textColor: Colors.white,
            ),

            /// 点击按钮弹出弹窗
            RaisedButton(
              child: Text('按钮2'),
              onPressed: _press2,
            ),
          ],
        ),
      ),
    );
  }

  void _press1() {
    // 打印日志
    debugPrint('FlatButton');
  }

  /// 弹出事件选择器
  void _press2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
}
