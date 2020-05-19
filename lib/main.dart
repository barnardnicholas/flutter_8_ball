import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text('Ask me anything!'),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballAnswer = 1;
  void pickAnswer() {
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              pickAnswer();
              print('Answer is now $ballAnswer');
            },
            child: Image.asset('images/ball$ballAnswer.png'),
          ),
        ),
      ],
    ));
  }
}
