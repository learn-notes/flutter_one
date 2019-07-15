import 'package:flutter/material.dart';

///
/// 按钮水波纹
///
/// @author : Joh Liu
/// @date : 2019/7/15 16:03
///
class GesturesTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮水波纹'),
      ),
      body: DrawDeletePage(),
    );
  }
}

class DrawDeletePage extends StatefulWidget {
  @override
  _DrawDeletePageState createState() {
    return _DrawDeletePageState();
  }
}

class _DrawDeletePageState extends State<DrawDeletePage> {
  final items = List<String>.generate(10, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Tap'),
          ));
        },
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Text('Button'),
        ),
      ),
    );
  }
}
