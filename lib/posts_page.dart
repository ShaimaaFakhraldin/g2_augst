import 'package:advancedui/model/posts.dart';
import 'package:advancedui/service/http_service.dart';
import 'package:flutter/material.dart';

class Postspage extends StatefulWidget {
  const Postspage({Key? key}) : super(key: key);

  @override
  State<Postspage> createState() => _PostspageState();
}

class _PostspageState extends State<Postspage> {
  final HttpService  httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  Text("getPostes"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),

        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
         if(snapshot.hasData){
           List<Post> posts = snapshot.data;
           return ListView.builder(
               itemCount: posts.length,
               itemBuilder:(BuildContext context , int index ){
                 return ListTile(
                   title: Text(posts[index].title)  ,
                   subtitle: Text("${posts[index].userId}"),
                 );
               });

         }else {
            return Center( child:  CircularProgressIndicator(),);
         }

        },


      ),
    );
  }
}
