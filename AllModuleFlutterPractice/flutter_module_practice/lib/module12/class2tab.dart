import 'package:flutter/material.dart';

class Module12Class2 extends StatelessWidget {
  const Module12Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabbar'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,

          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,

            indicatorPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

            labelColor: Colors.blueGrey,
            
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
            ),
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),

              Tab(icon: Icon(Icons.settings), text: 'Setting'),

              Tab(icon: Icon(Icons.functions), text: 'Function'),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Container(
              color: Colors.amber,
              child: Center(child: Text('Amber')),
            ),
            Container(
              color: Colors.blue,
              child: Center(child: Text('lightBlue')),
            ),
            Container(
              color: Colors.green,
              child: Center(child: Text('green')),
            ),
          ],
        ),
      ),
    );
  }
}
