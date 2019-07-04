import 'package:flutter/material.dart';

///
/// 布局Demo
///
/// @author : Joh Liu
/// @date : 2019/6/19 13:46
///
class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: '布局Demo',
      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Demo1'),
//        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/img_one.jpg',
              width: 600.0,
              height: 220.0,
              fit: BoxFit.cover,
            ),
            _TitleSection('标题', 'subtitle', 5),
            _ThreeIcon(),
            Container(
              padding: EdgeInsets.only(left: 24.0, top: 16.0, right: 24.0),
              child: Text(
                '\t\t\t\t\t\t\t\tFlutter作为一种全新的响应式，跨平台，高性能的移动开发框架。'
                '从开源以来，已经得到越来越多开发者的喜爱。闲鱼是最早一批与谷歌展开合作，'
                '并在重要的商品详情页中使用上线的公司。一路走来，积累了大量的开发经验。'
                '虽然越来越多的技术大牛在flutter世界中弄得风声水起，'
                '但是肯定有很多的flutter小白希望能快速上手，享受flutter编程的乐趣。'
                '本文就是面向刚刚踏上futter的同学，从Flutter体系中最基本的一个概念'
                'widget入手学习Flutter。希望能助力每一位初学者。\n\n'
                '\t\t\t\t\t\t\t\tFlutter作为一种全新的响应式，跨平台，高性能的移动开发框架。'
                '从开源以来，已经得到越来越多开发者的喜爱。闲鱼是最早一批与谷歌展开合作，'
                '并在重要的商品详情页中使用上线的公司。一路走来，积累了大量的开发经验。'
                '虽然越来越多的技术大牛在flutter世界中弄得风声水起，'
                '但是肯定有很多的flutter小白希望能快速上手，享受flutter编程的乐趣。'
                '本文就是面向刚刚踏上futter的同学，从Flutter体系中最基本的一个概念'
                'widget入手学习Flutter。希望能助力每一位初学者。',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 图片下标题部分
class _TitleSection extends StatelessWidget {
  /// 标题
  final String title;

  /// 副标题
  final String subtitle;

  /// 星星数目
  final int starCount;

  _TitleSection(this.title, this.subtitle, this.starCount);

  @override
  Widget build(BuildContext context) {
    // Container可以套padding
    return Container(
      // 设置padding
      padding:
          EdgeInsets.only(left: 28.0, top: 16.0, right: 28.0, bottom: 16.0),
      child: Row(
        children: <Widget>[
          // 标题填充满
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),

          // 右侧星星图标
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),

          //星星数量
          Text(starCount.toString()),
        ],
      ),
    );
  }
}

/// 三图标部分
class _ThreeIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        // 沿水平方向平均放置
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _ThreeIconItem(Icons.phone, Colors.blue, 'CALL'),
          _ThreeIconItem(Icons.near_me, Colors.blue, 'ROUTE'),
          _ThreeIconItem(Icons.share, Colors.blue, 'SHARE'),
        ],
      ),
    );
  }
}

/// 三图标中但图标内容
class _ThreeIconItem extends StatelessWidget {
  IconData icon;
  Color color;
  String label;

  _ThreeIconItem(this.icon, this.color, this.label);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        // min表示尽量少占用空间
        mainAxisSize: MainAxisSize.min,
        // 图标居中显示
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                color: color,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
