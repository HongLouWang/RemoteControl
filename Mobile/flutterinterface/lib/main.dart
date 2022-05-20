// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutterinterface/home.dart';
Future<void> main() async {
  debugPaintSizeEnabled = false;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const MyHomePage(title: 'Remote Connection',),
      },
    );
  }
}
