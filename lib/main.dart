import 'package:flutter/material.dart';
import 'AppHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 框架',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const AppHomePage(),
    );
  }
}


