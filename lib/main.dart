import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: MyHomePage(),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftDiceNr = 1;
  int rightDiceNr = 1;

  void randomTheDice() {
    setState(() {
      leftDiceNr = Random().nextInt(6) + 1;
      rightDiceNr = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                randomTheDice();
              },
              child: Image.asset('images/dice$leftDiceNr.png'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                randomTheDice();
              },
              child: Image.asset('images/dice$rightDiceNr.png'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
