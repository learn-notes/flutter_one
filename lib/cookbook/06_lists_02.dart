import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// 网格列表
///
/// @author : Joh Liu
/// @date : 2019/7/15 16:40
///
class ListsTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网格列表'),
      ),
      body: ImageCachePage(),
    );
  }
}

class ImageCachePage extends StatefulWidget {
  @override
  _ImageCachePageState createState() {
    return _ImageCachePageState();
  }
}

class _ImageCachePageState extends State<ImageCachePage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(30, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline,
          ),
        );
      }),
    );
  }
}
