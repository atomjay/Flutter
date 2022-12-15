import 'dart:math';
import 'package:flutter/material.dart';

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
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: () {
                ///
                ///當btn 按下後 setState 被調用，變更後的變數狀態 dirty，會重新 build widget.
                ///
                changeDiceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.white.withOpacity(0.001)),
                // padding: MaterialStateProperty.all(EdgeInsets.all(50)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
