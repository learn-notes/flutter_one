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
      home: Scaffold(
        appBar: AppBar(
          title: Text('命名路由'),
        ),
        body: NavigationPage(),
      ),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() {
    return _NavigationPageState();
  }
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: Text('Pick an option, any option!'),
      ),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    /// result接收回调数据
    final result = await Navigator.push(
      context,
      MaterialPageRoute(

          /// intentData是SecondScreenPage定义的接收数据的常量
          builder: (_) => SecondScreenPage(
                intentData: '这是上一页传递的数据',
              )),
    );

    if (result != null) {
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text("$result")));
    }
  }
}

///
/// 第二个页面
class SecondScreenPage extends StatelessWidget {
  final String intentData;

  const SecondScreenPage({Key key, this.intentData}) : super(key: key);

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
              child: Text(intentData),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  // Close the screen and return "Yep!" as the result.
                  Navigator.pop(context, 'Yep!');
                },
                child: Text('Yep!'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  // Close the screen and return "Nope!" as the result.
                  Navigator.pop(context, 'Nope.');
                },
                child: Text('Nope.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
