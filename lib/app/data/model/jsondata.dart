import 'package:flutter/foundation.dart';

class JsonDataHere {
  JsonDataHere(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});
  int id;
  int userId;
  String title;
  String body;

  factory JsonDataHere.fromJson(Map<String, dynamic> jsonData) {
    return JsonDataHere(
        userId: jsonData['userId'],
        id: jsonData['id'],
        title: jsonData['title'],
        body: jsonData['body']);
  }
  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
