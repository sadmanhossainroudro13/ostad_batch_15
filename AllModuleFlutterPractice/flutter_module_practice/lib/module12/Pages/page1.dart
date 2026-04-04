import 'package:flutter/material.dart';
import 'package:flutter_module_practice/module12/Pages/page2.dart';
import 'package:flutter_module_practice/module12/Pages/page3.dart';


class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(name: "Roudro"),
                  ),
                );
              },
              child: Text("Page 2"),
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

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text("Nav Page 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
              },
              child: Text("Nav Page 3"),
            ),
          ],
        ),
      ),
    );
  }
}
