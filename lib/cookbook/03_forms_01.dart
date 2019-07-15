import 'package:flutter/material.dart';

///
/// 文本变更
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
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("First text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      /// 文本变更监听
      child: Column(
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
        ],
      ),
    );
  }
}
