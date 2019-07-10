import 'package:flutter/material.dart';

import 'HomePage .dart';
import 'LoginPage .dart';
import 'colors.dart';
import 'cut_corners_border.dart';

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
      theme: ThemeData.light().copyWith(
        accentColor: kShrineBrown900,
        primaryColor: kShrinePink100,
        buttonColor: kShrinePink100,
        scaffoldBackgroundColor: kShrineBackgroundWhite,
        cardColor: kShrineBackgroundWhite,
        textSelectionColor: kShrinePink100,
        errorColor: kShrineErrorRed,

        /// 按钮主题色
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              buttonColor: kShrinePink100,
              textTheme: ButtonTextTheme.normal,
            ),

        /// 图标主题色
        primaryIconTheme:
            ThemeData.light().iconTheme.copyWith(color: kShrineBrown900),
        /// 输入框主题
        inputDecorationTheme: InputDecorationTheme(
          border: CutCornersBorder(),
        ),

        /// 文本主题色
        textTheme: _buildShrineTextTheme(ThemeData.light().textTheme),
        primaryTextTheme:
            _buildShrineTextTheme(ThemeData.light().primaryTextTheme),
        accentTextTheme:
            _buildShrineTextTheme(ThemeData.light().accentTextTheme),
      ),
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

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        body2: base.body2.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}
