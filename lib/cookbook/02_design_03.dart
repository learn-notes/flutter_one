import 'package:flutter/material.dart';

///
/// Tab使用
///
/// @author : Joh Liu
/// @date : 2019/7/11 16:17
///
class DesignThree extends StatefulWidget {
  @override
  _DesignThreeState createState() {
    return _DesignThreeState();
  }
}

class _DesignThreeState extends State<DesignThree> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab使用'),
          bottom: TabBar(tabs: [
            Tab(text: '汽车', icon: Icon(Icons.directions_car)),
            Tab(text: '火车', icon: Icon(Icons.directions_transit)),
            Tab(text: '自行车', icon: Icon(Icons.directions_bike)),
          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]),
      ),
    );
  }
}
