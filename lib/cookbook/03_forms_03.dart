import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// 文本验证
///
/// @author : Joh Liu
/// @date : 2019/7/15 13:13
///
class FormsThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本验证'),
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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Enter some text';
              }
              return null;
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),

        ],
      ),
    );
  }
}
