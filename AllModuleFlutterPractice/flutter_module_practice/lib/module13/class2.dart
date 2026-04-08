import 'dart:async';
import 'package:flutter/material.dart';

class Module13Class2 extends StatefulWidget {
  Module13Class2({super.key}) {
    print("1st print ...........");
  }

  @override
  State<Module13Class2> createState() {
    print("2nd print......");
    return _Module13Class2State();
  }
}

class _Module13Class2State extends State<Module13Class2> {
  String name = "Roudro";
  Timer? time;
  int seconds = 69;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("3 initState");

    time = Timer.periodic(Duration(seconds: 1), (time) {
      setState(() {
        seconds++;
      });
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("4th Print");
  }

  @override
  Widget build(BuildContext context) {
    print("4th inside widget build");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(name, style: TextStyle(fontSize: 50))),
          Text("Time CountDown: $seconds", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Module13Class2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("print 6");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
