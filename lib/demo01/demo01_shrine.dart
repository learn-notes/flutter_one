import 'package:flutter/material.dart';

import 'HomePage .dart';
import 'LoginPage .dart';

///
/// Material Design 风格的案例
///
/// @author : Joh Liu
/// @date : 2019/7/9 16:12
///
class ShrineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}
