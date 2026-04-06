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

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://ih1.redbubble.net/image.2803633151.6144/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                      ),
                    ),
                    Text(
                      'Khaby Lame',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("khaby@gmail.com"),
                  ],
                ),
              ),

              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
              ListTile(leading: Icon(Icons.home), title: Text('Home')),
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
