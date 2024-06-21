import 'package:flutter/material.dart';
import 'package:flutter_test_freemo_app/pages/signup.dart';

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

