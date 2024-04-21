import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(id: json['id'], title: json['title'], body: json['body']);
  }
}

class PostProvider extends ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future<void> fetchPosts(BuildContext context) async {
    try {
      
      String jsonString = await DefaultAssetBundle.of(context).loadString('lib/posts.json');
      List<dynamic> data = jsonDecode(jsonString);

      
      _posts = data.map((json) => Post.fromJson(json)).toList();

      notifyListeners();
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);
    final List<Post> posts = postProvider.posts;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return ListTile(
            title: Text(post.title),
            subtitle: Text(post.body),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          postProvider.fetchPosts(context); 
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
