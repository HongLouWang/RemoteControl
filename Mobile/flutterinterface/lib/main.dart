// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutterinterface/home.dart';
import 'package:flutterinterface/scan.dart';
import 'main.dart' as entrypoint;

Future<void> main() async {
  // runApp(MyApp('/login'));
  runScan();
}

Future<void> runScan() async {
  runApp(MyApp('/scan'));
}

class MyApp extends StatelessWidget {
  String initialRoute;
  MyApp(String initialRoute) {
    this.initialRoute = initialRoute;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: initialRoute,
      routes: {
        '/scan': (context) => Scan(),
        '/login': (context) => const MyHomePage(
              title: 'Remote Connection',
            ),
      },
    );
  }
}

// class Scan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.deepOrange,
//       ),
//       initialRoute: '/scan',
//       routes: {
//         '/scan': (context) => Scan(),
//         '/login': (context) => const MyHomePage(
//               title: 'Remote Connection',
//             ),
//       },
//     );
//   }
// }
