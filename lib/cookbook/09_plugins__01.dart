import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

///
/// 相机调用
///
/// @author : Joh Liu
/// @date : 2019/7/16 16:09
///
class PluginsOne extends StatefulWidget {
  @override
  _PluginsOneState createState() {
    return _PluginsOneState();
  }
}

class _PluginsOneState extends State<PluginsOne> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    _getCam().then((camera) {
      controller = CameraController(camera[0], ResolutionPreset.medium);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    });
  }

  Future<List<CameraDescription>> _getCam() async {
    return await availableCameras();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller));
  }
}
