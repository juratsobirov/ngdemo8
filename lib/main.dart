import 'package:flutter/material.dart';
import 'package:ngdemo8/pages/applifecycle_page.dart';
import 'package:ngdemo8/pages/valuekey_page.dart';
import 'package:ngdemo8/pages/widgetlifecycle_page.dart';
import 'pages/counter_page.dart';
import 'pages/globalkey_page.dart';
import 'pages/objectkey_page.dart';
import 'pages/uniquekey_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GlobalkeyPage(),
    );
  }
}
