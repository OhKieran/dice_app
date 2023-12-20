// ignore_for_file: avoid_print
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text('Dice'),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
          elevation: 5,
          shadowColor: Colors.black,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonDie = 1;
  int rightButtonDie = 6;

  void rollDice() {
    setState(() {
      rightButtonDie = Random().nextInt(5) + 1;
      leftButtonDie = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftButtonDie.png'),
              onPressed: () {
                rollDice();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightButtonDie.png'),
              onPressed: () {
                rollDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
