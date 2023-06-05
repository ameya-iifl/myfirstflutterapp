import 'dart:math';

import 'package:flutter/material.dart';

class DiceExample extends StatefulWidget {
  const DiceExample({Key? key}) : super(key: key);

  @override
  State<DiceExample> createState() => _DiceExampleState();
}

class _DiceExampleState extends State<DiceExample> {
  int numbers = 1;
  List<String> images = [
    "images/Alea_a1.png",
    "images/Alea_2.png",
    "images/Alea_3.png",
    "images/Alea_4.png",
    "images/Alea_5.png",
    "images/Dice-6.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice App"),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          setState(() {
            numbers = Random().nextInt(5) + 1;
          });
        },
        child: Container(
          width: 200,
          height: 200,
          child: Center(
            child: Image.asset(
              images[numbers - 1],
              scale: 0.5,
            ),
          ),
        ),
      )),
    );
  }
}
