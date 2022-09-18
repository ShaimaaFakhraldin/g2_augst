import 'dart:convert';

import 'package:advancedui/model/posts.dart';
import 'package:http/http.dart';

class HttpService {
  final String baseURl = "https://jsonplaceholder.typicode.com";
  Future<List<Post>> getPosts() async{
    var uri = Uri.parse(baseURl+"/posts");
    Response  re =   await get(uri);
    if(re.statusCode ==200){
      List<dynamic> body = jsonDecode(re.body);
      List<Post> posts =[];
      posts = body.map((dynamic item) => Post.fromMap(item)).toList();
      // for(int x = 0 ; x < body.length ; x++){
      //   var item = body[x];
      //   Post  post = Post.fromMap(item);
      //   posts.add(post);
      //
      // }
      return posts ;


    }

     return [];
  }
}