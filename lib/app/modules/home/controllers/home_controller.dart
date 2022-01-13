import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final url = 'https://jsonplaceholder.typicode.com/posts';
  var postJson = [].obs;

  fetchPost() async {
    final response = await http.get(Uri.parse(url));
    final jsonData = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {}
    postJson.value = jsonData;
  }

  postData() async {
    try {
      final response = await http.post(Uri.parse(url), body: {
        "title": 'Anything',
        "body": 'Post Body',
        "userId": '1',
      });
      print(response.body);
    } catch (e) {}
  }

  @override
  void onInit() {
    fetchPost();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
