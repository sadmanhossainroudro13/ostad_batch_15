import 'package:flutter/material.dart';
import 'package:flutter_module_practice/module12/Pages/page1.dart';
import 'package:flutter_module_practice/module12/Pages/page2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
        centerTitle: true,
        backgroundColor: Colors.limeAccent,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("If you go yoou cannot return..."),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: Text("Page 1"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(name: "Roudro"),
                  ),
                );
              },
              child: Text("Page 2"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/page3',
                  (Route) => false,
                );
              },
              child: Text('Nav page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
