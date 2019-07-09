import 'package:flutter/material.dart';

///
/// 资源文件
/// 1.当有一个资源文件有多个像素图时，可以在资源文件夹下建立2.0x,3.0x文件夹
/// 来存储不同像素的文件
/// 2.对于文字资源，需要创建一个文字资源管理类来存储，然后以‘StringManger.welComeStr’的
/// 方式引用
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
      body: Column(
        children: <Widget>[
          Text(StringManger.welComeStr),
          Center(
            child: Image.asset('images/img_01.jpg'),
          )
        ],
      ),
    );
  }
}

class StringManger {
  static String welComeStr = 'Welcome To Flutter!';
}
