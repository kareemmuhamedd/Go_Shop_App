import 'dart:convert';

import 'package:http/http.dart';

import 'PostModel.dart';

class HttpService {
  final String baseURL = "https://fakestoreapi.com";

  Future<List<PostModel>> getPosts() async {
    var uri = Uri.parse("$baseURL/products");
    Response re = await get(uri);
    if (re.statusCode == 200) {
      print("Hussein");
      List<dynamic> body = json.decode(re.body);
      List<PostModel> posts = [];
      posts = body.map((dynamic item) {
        var temp=PostModel.fromJson(item);
        print(temp.title);
        return temp;
      }).toList();
      print(posts.length);
      return posts;
    } else {
      return [];
    }
  }
}
