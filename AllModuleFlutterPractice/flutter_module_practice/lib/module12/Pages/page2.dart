import 'package:flutter/material.dart';
import 'package:flutter_module_practice/module12/Pages/page1.dart';
import 'package:flutter_module_practice/module12/Pages/page3.dart';


class Page2 extends StatelessWidget {
  final String name;
  const Page2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Here Displaying Name: $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: Text("Page 1"),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text("Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
