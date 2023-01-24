import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Image.asset('images/dice1.png'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Image.asset('images/dice2.png'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
