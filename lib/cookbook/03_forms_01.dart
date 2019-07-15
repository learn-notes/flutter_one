import 'package:flutter/material.dart';

///
/// 文本变更
/// TextField是默认的文本输入widget,样式为下划线，
/// 类似`Android`中的`EditText`
///
/// @author : Joh Liu
/// @date : 2019/7/15 9:27
///
class FormsOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本变更'),
      ),
      body: TextEditPage(),
    );
  }
}

class TextEditPage extends StatefulWidget {
  @override
  _TextEditPageState createState() {
    return _TextEditPageState();
  }
}

class _TextEditPageState extends State<TextEditPage> {
  final myController = TextEditingController();
  var myControllerTwo;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      /// 文本变更监听
      child: ListView(
        children: <Widget>[
          TextField(
            controller: myController,
          ),
          TextField(
            onChanged: (text) {
              myControllerTwo = text;
              print("Second text field: $myControllerTwo");
            },
          ),
          RaisedButton(child: Text('弹窗'), onPressed: () {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(myController.text),
                );
              },
            );
          })
        ],
      ),
    );
  }
}
