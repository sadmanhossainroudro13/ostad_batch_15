import 'package:flutter/material.dart';
import 'package:flutter_module_practice/module13/Pages/page1.dart';
import 'package:flutter_module_practice/module13/Pages/page2.dart';
import 'package:flutter_module_practice/module13/Pages/page3.dart';
import 'package:flutter_module_practice/module13/Pages/page4.dart';
import 'class2.dart';
import 'class1.dart';
import 'package:flutter_module_practice/module12/class3.dart';
import 'package:flutter_module_practice/module12/class2tab.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _selectedIndex = 0;

  List _pages = [dummyPage1(), dummyPage2(), dummyPage3(), dummyPage4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Bottom Navigation UI"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 114, 171),
      ),
      // body
      body: _pages[_selectedIndex],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith((state) {
            if (state.contains(MaterialState.selected)) {
              return TextStyle(color: Colors.blue, fontSize: 20);
            } else {
              return TextStyle(color: Colors.blue, fontSize: 10);
            }
          }),
        ),
        child: NavigationBar(
          backgroundColor: Colors.grey,
          indicatorColor: const Color.fromARGB(255, 88, 106, 139),

          selectedIndex: _selectedIndex,

          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },

          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.inbox), label: "Inbox"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
          ],
        ),
      ),
    );
  }
}
