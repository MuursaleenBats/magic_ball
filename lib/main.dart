import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          title: Center(
            child: Text(
              "Magic Ball",
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imageNum = 1;
  void randomImageNum() {
    imageNum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  randomImageNum();
                });
              },
              child: Image.asset('images/ball${imageNum}.png'),
            ),
          ),
        ],
      ),
    );
  }
}
