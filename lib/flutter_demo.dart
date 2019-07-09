import 'package:flutter/material.dart';
import 'package:flutter_one/demo01/demo01_shrine.dart';

import 'utils/layout_padding.dart';

///
/// flutter Demo
///
/// @author : Joh Liu
/// @date : 2019/7/4 16:04
///
class FlutterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter 再探'),
        centerTitle: true,
      ),
      body: DemoBody(),
    );
  }
}

class DemoBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoBodyState();
  }
}

class _DemoBodyState extends State<DemoBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        /// flutter Demo
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Demo_01'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ShrineApp()));
              }),
        ),
      ],
    );
  }
}
