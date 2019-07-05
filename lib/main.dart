import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; //1-6
      rightDiceNumber = Random().nextInt(6) + 1; //1-6
    });
  } //changeDiceFace

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftDiceNumber.png',
                    gaplessPlayback: true),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceNumber.png',
                    gaplessPlayback: true),
              ),
            ),
          ),
        ],
      ),
    );
  } //Widget build(BuildContext context)
} //_DicePageState
