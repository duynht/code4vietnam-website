import 'package:flutter/material.dart';
import 'package:code4vietnam/theme/style.dart';
import 'package:code4vietnam/pages/home-page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

