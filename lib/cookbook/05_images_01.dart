import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// 图片缓存
///
/// @author : Joh Liu
/// @date : 2019/7/15 16:15
///
class ImagesOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片缓存'),
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
    return Stack(
      children: <Widget>[
        Center(child: CircularProgressIndicator()),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ],
    );

//    return Center(
//      child: CachedNetworkImage(
//        placeholder: (context, url) => CircularProgressIndicator(),
//        imageUrl:
//        'https://picsum.photos/250?image=9',
//      ),
//    );
  }
}
