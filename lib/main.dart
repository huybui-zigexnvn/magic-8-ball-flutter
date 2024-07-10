import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: BallPage(),
    ),
    
  ),
);
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });
        }
      )),
    );
  }
}
