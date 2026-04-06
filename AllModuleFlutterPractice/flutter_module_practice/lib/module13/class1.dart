import 'package:flutter/material.dart';

class StatefulPractice extends StatefulWidget {
  const StatefulPractice({super.key});

  @override
  State<StatefulPractice> createState() => _StatefulPracticeState();
}

class _StatefulPracticeState extends State<StatefulPractice> {
  int value = 0;
  bool eyeOpen = true;
  String longText =
      "Upon completion of editing, like pressing the button on the keyboard, two actions take place:1st: Editing is finalized. The default behavior of this step includes an invocation of onChanged. That default behavior can be overridden. See onEditingComplete for details.2nd: onSubmitted is invoked with the user's input value.";

  bool seeMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.toString(), style: TextStyle(fontSize: 50)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      value++;
                    });
                  },
                  child: Text("+"),
                ),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      value--;
                    });
                  },
                  child: Text("-"),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: eyeOpen,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        eyeOpen = !eyeOpen;
                      });
                    },
                    icon: Icon(
                      eyeOpen ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                seeMore
                    ? "Upon completion of editing, like pressing the button on the keyboard, two actions take place:1st: Editing is finalized. "
                    : longText,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  seeMore = !seeMore;
                });
              },
              child: Text(seeMore ? "See more.." : "Hide"),
            ),
          ],
        ),
      ),
    );
  }
}
