import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_test_freemo_app/pages/home_page.dart';
import 'package:flutter_test_freemo_app/pages/signup.dart';
import 'package:flutter_test_freemo_app/widgets/notification_widget.dart';
  List<Photos> photoDisplayList = [];
  Future<List<Photos>> getPhotos() async {
    final response = await http
  .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
      var data = jsonDecode(response.body.toString());


  if(response.statusCode == 200) {
  for(Map i in data) {
  Photos photos = Photos(title:i['title'], url:i['ur'], id:i['id']);
  photoDisplayList.add(photos);
  }
  return photoDisplayList;
  }
  else {
  return photoDisplayList;
  }
  }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FreeMo App',
      home: const Register(),
    );
  }
}

