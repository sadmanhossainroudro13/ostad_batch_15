import 'package:flutter/material.dart';

class AnimationPractice extends StatefulWidget {
  const AnimationPractice({super.key});

  @override
  State<AnimationPractice> createState() => _AnimationPracticeState();
}

class _AnimationPracticeState extends State<AnimationPractice> {
  bool animationSwitch = false;
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  animationSwitch = !animationSwitch;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 5),
                height: animationSwitch ? 200 : 100,
                width: animationSwitch ? 200 : 100,

                decoration: BoxDecoration(
                  color: animationSwitch ? Colors.amber : Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            Divider(),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMessage = !showMessage;
                });
              },
              child: Text('Add to Cart'),
            ),

            AnimatedOpacity(
              opacity: showMessage ? 1 : 0,
              duration: Duration(seconds: 2),
              child: Text('Added to Cart', style: TextStyle(fontSize: 20)),
            ),

            SizedBox(height: 20),

            AnimatedAlign(
              alignment: showMessage
                  ? Alignment.bottomLeft
                  : Alignment.topRight,
              duration: Duration(milliseconds: 800),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://ih1.redbubble.net/image.2803633151.6144/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                ),
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Toggle Button'),
                  ),

                  AnimatedPositioned(
                    duration: Duration(milliseconds: 900),
                    bottom: showMessage ? 0 : -120,
                    left: 0,
                    right: 0,

                    child: Container(height: 120, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
