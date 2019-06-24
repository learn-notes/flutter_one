import 'package:flutter/material.dart';

///
/// 动画案例
///
/// @author : Joh Liu
/// @date : 2019/6/21 17:35
///
class AnimateDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnimateState();
  }
}

class _AnimateState extends State<AnimateDemo> with TickerProviderStateMixin {
  /// 动画
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    animation = new Tween(begin: 0.0, end: 1.0).animate(controller)
//      ..addListener(() {
//        print('动画监听');
//      })
    ..addStatusListener((state){
      // 利用反转，循环动画效果
      if(state==AnimationStatus.completed){
        // 动画完成后，反转动画
        controller.reverse();
      }else if(state == AnimationStatus.dismissed){
        // 动画消失后重启动画
        controller.forward();
      }
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画案例'),
      ),

      /// 缩放动画
      body: ScaleTransition(
        scale: animation,
        child: FlutterLogo(
          size: 200.0,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
