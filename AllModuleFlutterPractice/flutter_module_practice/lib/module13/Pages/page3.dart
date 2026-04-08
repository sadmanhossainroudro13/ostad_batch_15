import 'package:flutter/material.dart';

class dummyPage3 extends StatefulWidget {
  const dummyPage3({super.key});

  @override
  State<dummyPage3> createState() => _dummyPage3State();
}

class _dummyPage3State extends State<dummyPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
