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
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Row(
//        children: <Widget>[Dice("images/dice1.png"), Dice("images/dice1.png")],
//      ),
//    );
//  }
//}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    LeftDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$LeftDiceNumber.png")),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    RightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$RightDiceNumber.png")),
          ),
          //  Dice("images/dice1.png")
        ],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//class Dice extends StatelessWidget {
//  final String _assetImagePath;
//
//  Dice(this._assetImagePath);
//
//  @override
//  Widget build(BuildContext context) {
//    return Expanded(child: Image.asset(_assetImagePath));
//  }
//}
