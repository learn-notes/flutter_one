import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// 水平列表
///
/// @author : Joh Liu
/// @date : 2019/7/15 16:30
///
class ListsOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平列表'),
      ),
      body: HorizontalPage(),
    );
  }
}

class HorizontalPage extends StatefulWidget {
  @override
  _HorizontalPageState createState() {
    return _HorizontalPageState();
  }
}

///
/// 水平方向的List
class _HorizontalPageState extends State<HorizontalPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
          Container(
            width: 160.0,
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}

///
/// 垂直方向的List
class VerticalPage extends StatelessWidget {
  final List<String> items;

  const VerticalPage({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
