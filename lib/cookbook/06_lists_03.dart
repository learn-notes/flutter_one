import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// CustomScrollView
///
/// @author : Joh Liu
/// @date : 2019/7/15 16:50
///
class ListsThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          title: Text('CustomScrollView'),
          flexibleSpace: Image.asset(
            'images/img_one.jpg',
            fit: BoxFit.fill,
            height: 240.0,
          ),
          expandedHeight: 200.0,
        ),

        /// 可以是GridView,也可以是List
        SliverGrid.count(crossAxisCount: 3, children: List.generate(30, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),),

      ],
    );
  }
}
