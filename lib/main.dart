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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[Dice(), Dice()],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_number = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Image.asset("images/dice$dice_number.png"),
        onPressed: () {
          setState(() {
            dice_number = Random().nextInt(6) + 1;
          });
        },
      ),
    );
  }
}
