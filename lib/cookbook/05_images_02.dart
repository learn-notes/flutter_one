import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///
/// 大图查看
///
/// @author : Joh Liu
/// @date : 2019/7/16 13:39
///
class ImagesTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('大图查看'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return SecondScreenPage();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563265741206&di=10aded49e5908b06783a273b4faabb2b&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F5b40c25b0e5d3550d9f15db659cea94f29f576189155-3kcAlr_fw658',
            width: 200.0,
            height: 400.0,
          ),
        ),
      ),
    );
  }
}

///
/// 第二个页面
class SecondScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black26,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563265741206&di=10aded49e5908b06783a273b4faabb2b&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F5b40c25b0e5d3550d9f15db659cea94f29f576189155-3kcAlr_fw658',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
