import 'dart:convert';

import 'package:last/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService 
{
  Future<Post> getPosts()async
  {
    var client = http.Client();

    var uri= Uri.parse('https://testbed.flex-money.tech/md5Password');
    var response =  await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      
      

    }return postFromJson(json as String);
    
    
  

  }
  
}