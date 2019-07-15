import 'package:flutter/material.dart';

///
/// 侧滑删除
///
/// @author : Joh Liu
/// @date : 2019/7/15 15:26
///
class GesturesOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('侧滑删除'),
      ),
      body: DrawDeletePage(),
    );
  }
}

class DrawDeletePage extends StatefulWidget {
  @override
  _DrawDeletePageState createState() {
    return _DrawDeletePageState();
  }
}

class _DrawDeletePageState extends State<DrawDeletePage> {
  final items = List<String>.generate(10, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            // 每个Dismissible实例都必须包含一个Key。Key让Flutter能够对Widgets做唯一标识。
            key: Key(item),
            // 我们还需要提供一个函数，告诉应用，在项目被移出后，要做什么。
            onDismissed: (direction) {
              // 从数据源中移除项目
              setState(() {
                items.removeAt(index);
              });

              // 展示一个 snackbar！
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            // 列表项被滑出时，显示一个红色背景(Show a red background as the item is swiped away)
            background: Container(color: Colors.red),
            child: ListTile(title: Text('$item')),
          );
        },
      ),
    );
  }
}
