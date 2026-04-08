import 'package:flutter/material.dart';

class dummyPage4 extends StatefulWidget {
  const dummyPage4({super.key});

  @override
  State<dummyPage4> createState() => _dummyPage4State();
}

class _dummyPage4State extends State<dummyPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 4"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
    );
  }
}
