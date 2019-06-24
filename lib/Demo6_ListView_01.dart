import 'package:flutter/material.dart';

///
/// ListView列表案例
///
/// @author : Joh Liu
/// @date : 2019/6/19 17:56
///
class ListViewOneDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView案例1'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Center(
              child: Icon(Icons.map),
              widthFactor: 2.0,
            ),
            title: Text('主标题'),
            subtitle: Text('副标题'),
            trailing: Text('尾部'),
          ),
          ListTile(
            leading: Center(
              child: Icon(Icons.map),
              widthFactor: 2.0,
            ),
            title: Text('主标题2'),
            subtitle: Text('副标题2'),
            trailing: Text('尾部2'),
          ),
          ListTile(
            leading: Center(
              child: Icon(Icons.map),
              widthFactor: 2.0,
            ),
            title: Text('主标题3'),
            subtitle: Text('副标题3'),
            trailing: Text('尾部3'),
          ),
        ],
      ),
    );
  }
}
