import 'package:flutter/material.dart';

import 'cookbook/01_animation_01.dart';
import 'cookbook/01_animation_02.dart';
import 'cookbook/01_animation_03.dart';
import 'cookbook/02_design_01.dart';
import 'cookbook/02_design_02.dart';
import 'cookbook/02_design_03.dart';
import 'cookbook/02_design_04.dart';
import 'cookbook/02_design_05.dart';
import 'cookbook/03_forms_01.dart';
import 'cookbook/03_forms_02.dart';
import 'cookbook/03_forms_03.dart';
import 'cookbook/03_forms_04.dart';
import 'cookbook/04_gestures_01.dart';
import 'cookbook/04_gestures_02.dart';
import 'cookbook/05_images_01.dart';
import 'cookbook/06_lists_01.dart';
import 'cookbook/06_lists_02.dart';
import 'cookbook/06_lists_03.dart';
import 'cookbook/07_navigation_01.dart';
import 'cookbook/07_navigation_02.dart';
import 'cookbook/07_navigation_03.dart';
import 'cookbook/05_images_02.dart';
import 'cookbook/08_network__01.dart';
import 'cookbook/09_plugins__01.dart';
import 'utils/layout_padding.dart';

///
/// flutter 实用教程
///
/// @author : Joh Liu
/// @date : 2019/7/10 16:04
///
class CookBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter 实用教程'),
        centerTitle: true,
      ),
      body: CookBody(),
    );
  }
}

class CookBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CookBodyState();
  }
}

class _CookBodyState extends State<CookBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ///============================ 动画 ==================================///
        /// 转场动画
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Animation_转场动画'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AnimationOne()));
              }),
        ),

        /// 渐变动画
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Animation_渐变动画'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AnimationTwo()));
              }),
        ),

        /// 淡入淡出
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Animation_淡入淡出'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AnimationThree()));
              }),
        ),

        ///========================== design ================================///
        /// 使用字体包
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_使用字体包'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignOne()));
              }),
        ),

        /// 统一颜色和字体风格
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_Theme'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignTwo()));
              }),
        ),

        /// Tab使用
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_Tab'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignThree()));
              }),
        ),

        /// SnackBar
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_SnackBar'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignFour()));
              }),
        ),

        /// 屏幕方向
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Design_屏幕方向'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DesignFive()));
              }),
        ),

        ///====================== 文本交互(Forms) ============================///
        /// 文本变更
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Forms_文本变更'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormsOne()));
              }),
        ),

        /// 文本框输入样式
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Forms_文本输入样式'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormsTwo()));
              }),
        ),

        /// 文本验证
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Forms_文本验证'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormsThree()));
              }),
        ),

        /// 文本焦点获取
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Forms_文本焦点获取'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormsFour()));
              }),
        ),

        ///====================== 手势操作(Gestures) =========================///
        /// 侧滑删除
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Gestures_侧滑删除'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GesturesOne()));
              }),
        ),

        /// 按钮水波纹
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Gestures_按钮水波纹'),
              onPressed: () {
                /// 页面跳转
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GesturesTwo()));
              }),
        ),

        ///========================== 图片(Images) ============================///
        /// 图片缓存
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Images_图片缓存'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ImagesOne()));
              }),
        ),

        ///大图查看
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Images_大图查看'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ImagesTwo()));
              }),
        ),

        ///========================= 列表相关(Lists) ==========================///
        /// 水平列表
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Lists_水平列表'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListsOne()));
              }),
        ),

        /// 网格列表
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Lists_网格列表'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListsTwo()));
              }),
        ),

        /// CustomScrollView
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Lists_CustomScrollView'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListsThree()));
              }),
        ),

        ///========================= 导航(Navigation) ==========================///
        ///页面间数据传递
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Navigation_页面间数据传递'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NavigationOne()));
              }),
        ),

        ///命名路由
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Navigation_命名路由'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NavigationTwo()));
              }),
        ),

        ///路由传参
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Navigation_路由传参'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NavigationThree()));
              }),
        ),

        ///========================= 网络相关(Networking) ==========================///
        ///HTTP授权
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Network_HTTP授权'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => NetworkOne()));
              }),
        ),

        ///========================= 插件(Plugins) ==========================///
        ///相机调用
        LayoutPadding.layout(
          RaisedButton(
              child: Text('Plugins_相机调用'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PluginsOne()));
              }),
        ),

        ///=============================== 占位 ================================///
        Container(
          height: 100.0,
        ),
      ],
    );
  }
}
