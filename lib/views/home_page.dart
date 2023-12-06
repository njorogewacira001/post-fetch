

import 'package:flutter/material.dart';

import 'package:last/models/post.dart';
import 'package:last/services/remote_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  var isLoaded = true;

  @override
  void initState(){
    super.initState();

    getData();
  }

  getData()async {
    posts= (await RemoteService().getPosts()) as List<Post>?;
    if(posts != null)
    {
      setState(() {
        isLoaded= true;
      });

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder:((context, index) {
            return Container(
              child: Text('post.password'),
            );
          }) ),
          replacement: const Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}