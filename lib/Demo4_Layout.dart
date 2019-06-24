import 'package:flutter/material.dart';

///
/// 水平、垂直布局(含权重分配)
///
/// @author : Joh Liu
/// @date : 2019/6/19 10:32
///
class LayoutDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LayoutState();
  }
}

class _LayoutState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout案例'),
        centerTitle: true,
      ),

      /// 垂直布局 Column
      body: Column(
        children: <Widget>[
          ///水平布局 Row
          Row(
            children: <Widget>[
              /// 相当于Android里的权重
              Expanded(
                child: Text(
                  '文本1文本1文本1文本1文本1文本1文本1文本1文本1文本1',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    // 字体背景色
                    backgroundColor: Colors.cyan,
                  ),
                ),
              ),

              Text(
                '文本2',
                style: TextStyle(
                  // 字体背景色
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              Text(
                '文本3',
                style: TextStyle(
                  // 字体背景色
                  backgroundColor: Colors.red,
                ),
              ),
              Text(
                '文本4',
                style: TextStyle(
                  // 字体背景色
                  backgroundColor: Colors.black87,
                ),
              ),
              Text(
                '文本5',
                style: TextStyle(
                  // 字体背景色
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),

          Expanded(
            // 占一行的 2/3
            flex: 2,
            child: Text('文本1'),
          ),
          Expanded(
            // 占一行的 1/3
            flex: 1,
            child: Text('文本2'),
          ),

//          /// 垂直布局
//          Column(
//            children: <Widget>[
//              Expanded(
//                // 占一行的 2/3
//                flex: 2,
//                child: Text('文本1'),
//              ),
//              Expanded(
//                // 占一行的 1/3
//                flex: 1,
//                child: Text('文本2'),
//              ),
//            ],
//          )
        ],
      ),
    );
  }
}
