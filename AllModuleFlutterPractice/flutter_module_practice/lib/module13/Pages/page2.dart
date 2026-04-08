import 'package:flutter/material.dart';

class dummyPage2 extends StatefulWidget {
  const dummyPage2({super.key});

  @override
  State<dummyPage2> createState() => _dummyPage2State();
}

class _dummyPage2State extends State<dummyPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
