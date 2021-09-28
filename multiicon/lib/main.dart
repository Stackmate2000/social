import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiicon/startup/brandpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Container(child: BrandPage())),
    );
  }
}
