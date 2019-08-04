import 'package:flutter/material.dart';

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
        children: <Widget>[
          Dice("images/dice1.png", "LEFT"),
          Dice("images/dice1.png", "RIGHT")
        ],
      ),
    );
  }
}

class Dice extends StatelessWidget {
  final String _assetImagePath;
  final String _dice_position;

  Dice(this._assetImagePath, this._dice_position);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FlatButton(
      child: Image.asset(_assetImagePath),
      onPressed: () {
        print("$_dice_position Dice Has Been Pressed");
      },
    ));
  }
}
