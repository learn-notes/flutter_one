import 'package:flutter/material.dart';
import 'package:flutter_one/utils/layout_padding.dart';

///
/// widget说明
/// flutter中'一切皆widget'，但Widget是不可变的，
/// 当需要更新页面时，就需要操作Widget的状态，
/// 有状态widget【StatefulWidget】，无状态widget【StatelessWidget】
/// 当 Widget 会变化（例如由于用户交互），它是有状态的。
/// 但当 Widget 响应变化，它的父 Widget 只要本身不响应变化，就依然是无状态的。
///
/// @author : Joh Liu
/// @date : 2019/7/4 16:10
///
class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget 说明'),
        centerTitle: true,
      ),
      body: WidgetFul(),
    );
  }
}

///
/// 有状态Widget
class WidgetFul extends StatefulWidget {
  @override
  _WidgetFulState createState() {
    return _WidgetFulState();
  }
}

class _WidgetFulState extends State<WidgetFul> {
  String textToShow = 'I Like Flutter.';

  @override
  Widget build(BuildContext context) {
    return LayoutPadding.Layout(
      ListView(
        children: <Widget>[
          Text(textToShow),
          RaisedButton(child: Text('update text'), onPressed: _updateText),
        ],
      ),
    );
  }

  void _updateText() {
    setState(() {
      String def = 'Hello World!';
      if (textToShow != def)
        textToShow = def;
      else
        textToShow = 'I Like Flutter.';
    });
  }
}

///
/// 由上面案例可看出【WidgetDemo】是无状态的，应为他本身不涉及一些交互的东西；
/// 而【WidgetFul】为了使内部按钮点击时变更textToShow，所以必须是有状态的，
/// 否则无法使用setState()方法，也就无法变更textToShow了。
///
