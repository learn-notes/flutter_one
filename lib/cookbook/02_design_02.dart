import 'package:flutter/material.dart';

///
/// 使用 Themes 统一颜色和字体风格
///
/// @author : Joh Liu
/// @date : 2019/7/11 14:45
///
class DesignTwo extends StatefulWidget {
  @override
  _DesignTwoState createState() {
    return _DesignTwoState();
  }
}

class _DesignTwoState extends State<DesignTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '统一颜色和字体风格',

      /// 统一主题设置
      theme: ThemeData(
        // Define the default brightness and colors.
        //brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        /// 统一字体字型
        fontFamily: 'NotoSans',

        /// 统一字体样式
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                /// 回到上一页
                Navigator.pop(context);
              }),
          title: Text('统一颜色和字体风格'),
        ),
        body: ListView(
          children: <Widget>[
            Text(
              'Using the Raleway font from the awesome_package',
              style: Theme.of(context).textTheme.title,
            ),
            Text('Using the Raleway font from the awesome_package'),
          ],
        ),
      ),
    );
  }
}
