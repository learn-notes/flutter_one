import 'package:flutter/material.dart';

///
/// ListView加载更多
///
/// @author : Joh Liu
/// @date : 2019/6/20 9:34
///
class ListViewThreeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<ListViewThreeDemo> {
  /// 数据初始化
  List<int> items = List.generate(11, (i) => i);
  ScrollController _scrollController = ScrollController();

  /// 是否正在进行网络请求
  bool isPerformingRequest = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView案例3'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length + 1,
        itemBuilder: (context, index) {
          if (index == items.length) {
            return _buildProgressIndicator();
          } else {
            return ListTile(title: Text('number $index'));
          }
        },
        controller: _scrollController,
      ),
    );
  }

  /// 获取更多数据
  _getMoreData() async {
    if (!isPerformingRequest) {
      setState(() {
        isPerformingRequest = true;
      });
      List<int> newEntries = await fakeRequest(items.length, items.length + 11);

      if (newEntries.isEmpty) {
        double edge = 50.0;
        double offsetFromBottom = _scrollController.position.maxScrollExtent -
            _scrollController.position.pixels;
        if (offsetFromBottom < edge) {
          _scrollController.animateTo(
              _scrollController.offset - (edge - offsetFromBottom),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeOut);
        }
      }

      setState(() {
        items.addAll(newEntries);
        isPerformingRequest = false;
      });
    }
  }

  Future<List<int>> fakeRequest(int form, int to) async {
    return Future.delayed(
      Duration(seconds: 2),
      () {
        return List.generate(to - form, (i) => i + form);
      },
    );
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Opacity(
            opacity: isPerformingRequest ? 1.0 : 0.0,
            child: CircularProgressIndicator(),
          ),
        ),
        width: 20.0,
        height: 20.0,
      ),
    );
  }
}
