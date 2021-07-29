import 'package:flutter/material.dart';
import 'package:magic_8_ball/widgets/ball.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 25.0),
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Ball(),
      ),
    );
  }
}
