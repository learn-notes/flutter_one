import 'package:flutter/material.dart';

///
/// 生命周期监听
///
/// @author : Joh Liu
/// @date : 2019/7/9 10:32
///
class LifecycleDemo extends StatefulWidget {
  @override
  _LifecycleDemoState createState() {
    return _LifecycleDemoState();
  }
}

class _LifecycleDemoState extends State<LifecycleDemo> with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_lastLifecycleState == null)
      return Text('This widget has not observed any lifecycle changes.', textDirection: TextDirection.ltr);

    return Text('The most recent lifecycle state this widget observed was: $_lastLifecycleState.',
        textDirection: TextDirection.ltr);
  }



}
