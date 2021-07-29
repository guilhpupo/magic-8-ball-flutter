import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  handleOnPressed() {
    Random randomNumber = new Random();

    setState(() {
      ballNumber = randomNumber.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: handleOnPressed,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
