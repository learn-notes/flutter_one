import 'package:flutter/material.dart';
import 'package:flutter_one/utils/layout_padding.dart';

///
/// Text案例
///
/// @author : Joh Liu
/// @date : 2019/6/19 9:51
///
class TextDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextState();
  }
}

class _TextState extends State<TextDemo> {
  /// 输入文本框监听
  var editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text案例'),
        // 标题居中显示
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          LayoutPadding.LayoutList(<Widget>[
            Text('1.输入文本'),
            TextField(
              controller: editController,
              // 自动获取焦点。在页面打开时自动弹出输入法
              autofocus: true,
            ),
          ]),
          LayoutPadding.LayoutList(<Widget>[
            Text('2.文本'),
            Text(
              '\t\t\t\t\t\t\t\tFlutter作为一种全新的响应式，跨平台，高性能的移动开发框架。'
              '从开源以来，已经得到越来越多开发者的喜爱。闲鱼是最早一批与谷歌展开合作，'
              '并在重要的商品详情页中使用上线的公司。一路走来，积累了大量的开发经验。'
              '虽然越来越多的技术大牛在flutter世界中弄得风声水起，'
              '但是肯定有很多的flutter小白希望能快速上手，享受flutter编程的乐趣。'
              '本文就是面向刚刚踏上futter的同学，从Flutter体系中最基本的一个概念'
              'widget入手学习Flutter。希望能助力每一位初学者。\n\n',
              style: TextStyle(
                // 字体色
                color: Colors.cyan[400],
                // 字体大小
                fontSize: 20.0,
                // 字体背景色
                backgroundColor: Colors.amberAccent,
              ),
              // 最大显示行数
              maxLines: 7,
              // 文字结尾...
              overflow: TextOverflow.ellipsis,
            ),
          ]),
        ],
      ),
    );
  }

  /// 清除销毁
  @override
  void dispose() {
    super.dispose();
    //手动调用dispose释放资源
    editController.dispose();
  }
}
