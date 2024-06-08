import 'package:flutter/material.dart';
import 'package:test_ui/widget/home.dart';
import 'package:test_ui/widget/leading.dart';
import 'package:test_ui/widget/login.dart';
//import 'package:test_ui/widget/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MainState();
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Leading(),
    );
  }
}
