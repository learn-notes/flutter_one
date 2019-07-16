import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// 命名路由
///
/// @author : Joh Liu
/// @date : 2019/7/15 18:09
///
class NavigationTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '命名路由',

      // 使用“/”命名路由来启动应用
      // 在这里，应用将从 FirstScreen Widget 启动
      initialRoute: '/',
      routes: {
        // 当我们跳转到“/”时，构建 FirstScreen Widget
        '/': (context) => FirstScreenPage(),
        // 当我们跳转到“/second”时，构建 SecondScreen Widget
        '/second': (context) => SecondScreenPage(),
      },
    );
  }
}

///
/// 第一个页面
class FirstScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('命名路由'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('跳转第二页'),
        ),
      ),
    );
  }
}

///
/// 第二个页面
class SecondScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面二'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('回第一页'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
