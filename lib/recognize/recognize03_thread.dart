import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

///
/// 异步UI
/// Android原生开发中
///
/// @author : Joh Liu
/// @date : 2019/7/5 16:54
///
class ThreadDemo extends StatefulWidget {
  @override
  _ThreadDemoState createState() {
    return _ThreadDemoState();
  }
}

class _ThreadDemoState extends State<ThreadDemo> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('异步UI'),
        centerTitle: true,
      ),
      body: getBody(),
    );
  }

  showLoadingDialog() {
    return widgets.length == 0;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }

  getProgressDialog() {
    return Center(child: CircularProgressIndicator());
  }

  ListView getListView() => ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int i) {
        return Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text("Row ${widgets[i]["title"]}"),
              Image.network(
                  'http://pic37.nipic.com/20140113/8800276_184927469000_2.png'),
            ],
          ),
        );
      });

  loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = json.decode(response.body);
    });
  }
}
