import 'package:flutter/material.dart';

///
/// 登录页面
///
/// @author : Joh Liu
/// @date : 2019/7/9 16:37
///
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),

            // [Name]
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            // spacer
            SizedBox(height: 12.0),
            // [Password]
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
