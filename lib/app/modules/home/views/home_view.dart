import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.postJson.length,
        itemBuilder: (context, index) {
          final post = controller.postJson[index];
          return Text("Title : ${post['title']}  Body : ${post['body']}\n\n\n");
        },
      ),
      // Center(
      //     child: ElevatedButton(
      //       onPressed: () {
      //         controller.postData();
      //       },
      //       child: Text('postData'),
      //     ),
      //   )
    );
  }
}
