import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// 文本输入样式
///
/// @author : Joh Liu
/// @date : 2019/7/15 10:13
///
class FormsTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本输入样式'),
      ),
      body: TextEditPage(),
    );
  }
}

class TextEditPage extends StatefulWidget {
  @override
  _TextEditPageState createState() {
    return _TextEditPageState();
  }
}

class _TextEditPageState extends State<TextEditPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      /// 文本变更监听
      child: Column(
        children: <Widget>[
          /// 不带下划线、不带标签预留空间的文本输入
          TextField(
            decoration: null,
          ),

          /// 带hint的文本输入
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '不带下划线',
            ),
          ),

          /// 带label的文本输入
          TextFormField(
            decoration: InputDecoration(labelText: '带label的文本输入'),
          ),

          /// 只允许输入数字
          TextField(
            decoration: InputDecoration(
              hintText: '输入6位数字',
            ),
            keyboardType: TextInputType.number, // 键盘类型，数字键盘
            inputFormatters: [
              WhitelistingTextInputFormatter.digitsOnly, // 只输入数字
              LengthLimitingTextInputFormatter(6) // 限制长度
            ],
          ),
        ],
      ),
    );
  }
}
