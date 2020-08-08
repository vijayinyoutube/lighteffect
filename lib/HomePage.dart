import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int alphaValue = 50;
  bool ispressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  ispressed = !ispressed;
                });
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    ispressed
                        ? BoxShadow(
                            color: Colors.blue.withAlpha(alphaValue),
                            blurRadius: 45,
                            spreadRadius: 15,
                            offset: Offset(0, 0),
                          )
                        : BoxShadow(),
                  ],
                  gradient: LinearGradient(colors: [
                    Color(0xFFFF1000),
                    Color(0xFF2508FF),
                  ], begin: Alignment.centerRight, end: Alignment.centerLeft),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 75,
            ),
            Slider(
              value: 50,
              max: 125,
              onChanged: (double value) {
                setState(() {
                  alphaValue = value.toInt();
                  value = value;
                });
              },
            ),
            SizedBox(
              height: 75,
            ),
            Neon(
              text: 'vijaycreations',
              color: Colors.blue,
              fontSize: 25,
              font: NeonFont.Beon,
              flickeringText: true,
              flickeringLetters: null,
              glowingDuration: new Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
