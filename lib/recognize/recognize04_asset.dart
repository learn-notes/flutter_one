import 'package:flutter/material.dart';

///
/// 资源文件
///
/// @author : Joh Liu
/// @date : 2019/7/5 18:02
///
class AssetsDemo extends StatefulWidget {
  @override
  _AssetsDemoState createState() {
    return _AssetsDemoState();
  }
}

class _AssetsDemoState extends State<AssetsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('资源文件'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset('images/img_01.jpg'),
      ),
    );
  }
}
