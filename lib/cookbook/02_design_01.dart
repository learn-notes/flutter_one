import 'package:flutter/material.dart';

///
/// 使用字体包
///
/// @author : Joh Liu
/// @date : 2019/7/11 13:43
///
class DesignOne extends StatefulWidget {
  @override
  _DesignOneState createState() {
    return _DesignOneState();
  }
}

class _DesignOneState extends State<DesignOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('字体包'),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            'Using the Raleway font from the awesome_package',
            style: TextStyle(fontFamily: 'Regular'),
          ),
          Text(
            'Using the Raleway font from the awesome_package',
            style: TextStyle(fontFamily: 'NotoSans'),
          ),
        ],
      ),
    );
  }
}
