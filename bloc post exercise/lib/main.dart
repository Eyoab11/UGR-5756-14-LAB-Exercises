import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyAppBloc());
}

class MyAppBloc extends StatelessWidget {
  const MyAppBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(),
      child: MaterialApp(
        title: 'http package',
        theme: ThemeData(
          primaryColor: Colors.blue,
          primarySwatch: Colors.amber,
        ),
        home: const HomeWidget(),
      ),
    );
  }
}

class PostBloc extends Cubit<List<Post>> {
  PostBloc() : super([]);

  Future<void> getPosts() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> responseBody = json.decode(response.body);
      final posts = responseBody.map((postJson) => Post.fromJson(postJson)).toList();
      emit(posts);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postBloc = BlocProvider.of<PostBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text('HTTP package', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center( 
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () => postBloc.getPosts(),
                child: const Text('Get', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          BlocBuilder<PostBloc, List<Post>>(
            builder: (context, posts) {
              if (posts.isEmpty) {
                return const Expanded(
                  child: Center(
                    child: Text('No posts available'),
                  ),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      return buildDataWidget(context, post);
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildDataWidget(BuildContext context, Post post) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title, style: const TextStyle(color: Colors.blue)),
            const Divider(color: Colors.blue),
            const SizedBox(height: 10),
            Text(post.description, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class Post {
  final String title;
  final String description;
  final int id;

  Post({required this.title, required this.description, required this.id});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'],
        title: json['title'],
        description: json['body'],
      );
}
