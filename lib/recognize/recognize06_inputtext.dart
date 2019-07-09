import 'package:flutter/material.dart';

///
/// 输入文本
///
/// @author : Joh Liu
/// @date : 2019/7/9 13:53
///
class InputText extends StatefulWidget {
  @override
  _InputTextState createState() {
    return _InputTextState();
  }
}

class _InputTextState extends State<InputText> {
  String _errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('输入文本'),
        centerTitle: true,
      ),
      body: Center(
        child: TextField(
          onSubmitted: (String text) {
            setState(() {
              if (!isEmail(text)) {
                _errorText = 'Error: This is not an number and words';
              } else {
                _errorText = null;
              }
            });
          },
          decoration: InputDecoration(
            hintText: "This is a hint",
            errorText: _errorText,
          ),
        ),
      ),
    );
  }

  bool isEmail(String em) {
    String emailRegexp =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(emailRegexp);

    return regExp.hasMatch(em);
  }
}
