import 'package:flutter/material.dart';
import 'package:flutter_module_practice/module12/Pages/page1.dart';
import 'package:flutter_module_practice/module12/Pages/page2.dart';
import 'package:flutter_module_practice/module12/Pages/page3.dart';
import 'package:flutter_module_practice/module12/class2tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/tabPage',
      routes: {
        "/page1": (context) => Page1(),
        "/page2": (context) => Page2(name: "HII"),
        "/page3": (context) => Page3(),
        '/tabPage':(context) => Module12Class2(),
      },
      home: Page1(),
    );
  }
}
