// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
    String password;

    Post({
        required this.password,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        password: json["8237c636a094816e693fd00808e1c277"],
    );

    Map<String, dynamic> toJson() => {
        "password": password,
    };
}
