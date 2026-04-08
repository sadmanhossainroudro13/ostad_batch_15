import 'package:flutter/material.dart';

class dummyPage1 extends StatefulWidget {
  const dummyPage1({super.key});

  @override
  State<dummyPage1> createState() => _dummyPage1State();
}

class _dummyPage1State extends State<dummyPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
