import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// 路由传参
///
/// @author : Joh Liu
/// @date : 2019/7/16 11:09
///
class NavigationThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/third_page') {
          final String args = settings.arguments;

          return MaterialPageRoute(
            builder: (context) {
              return ThirdScreenPage(
                title: args,
                message: args,
              );
            },
          );
        } else {
          return null;
        }
      },
      home: FirstScreenPage(),
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
        title: Text('路由传参'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('导航到提取参数的屏幕'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreenPage(),

                    /// 通过路由设置传递参数
                    settings: RouteSettings(
                      arguments: '这是传递的参数11111',
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("导航到接受参数的命名"),
              onPressed: () {
                /// 通过命名路由设置传递参数
                Navigator.pushNamed(
                  context,
                  '/third_page',
                  arguments: '这是传递的参数22222',
                );
              },
            ),
          ],
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
    // Extract the arguments from the current ModalRoute settings and cast
    final String args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args),
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}

///
/// 第三个页面
/// NAS 1.54
/// DOGE 0.003610  BIX 0.360001
/// HT 4.0 BCH 400
class ThirdScreenPage extends StatelessWidget {

  final String title;
  final String message;

  const ThirdScreenPage({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
