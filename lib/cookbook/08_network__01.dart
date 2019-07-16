import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

///
/// HTTP授权
///
/// @author : Joh Liu
/// @date : 2019/7/16 14:09
///
class NetworkOne extends StatefulWidget {
  @override
  _NetworkOneState createState() {
    return _NetworkOneState();
  }
}

class _NetworkOneState extends State<NetworkOne> {
  String jsonData = '';

  @override
  void initState() {
    super.initState();
    _fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP授权'),
      ),
      body: Center(
        child: Text(
          jsonData,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  ///  {
  ///  "userId": 1,
  ///  "id": 1,
  ///  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  ///  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  ///  }
  _fetchPost() {
    http.get(
      'https://jsonplaceholder.typicode.com/posts/1',
      /// 请求头
      headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
    ).then((http.Response response) {
      var responseJson = json.decode(response.body);
      setState(() {
        jsonData = responseJson['title'];
        //Post p = Post.fromJson(responseJson);
      });
    });
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
