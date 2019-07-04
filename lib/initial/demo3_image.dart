import 'package:flutter/material.dart';

///
/// Image案例
///
/// @author : Joh Liu
/// @date : 2019/6/18 17:52
///
class ImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageState();
  }
}

class _ImageState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image案例'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          /// 图标使用
          Icon(
            Icons.add_a_photo,
            color: Colors.red[500],
          ),

          /// 网络图片加载
          Image.network(
            "http://pic37.nipic.com/20140113/8800276_184927469000_2.png",
            width: 200.0,
            height: 150.0,
          ),

          /// 本地图片
          Image.asset(
            'images/img_one.jpg',
            width: 500.0,
            height: 220.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
