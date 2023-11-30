import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();
int clicked = 0;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    int value = random.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$value.png';
      clicked += 1;
      print(clicked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          height: 150,
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ), //makes padding between dice and button
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 30),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice")),
        Text(
          "You clicked $clicked times",
          style: const TextStyle(
              color: Color.fromARGB(255, 19, 66, 104),
              fontWeight: FontWeight.w800,
              fontSize: 20),
        ),
      ],
    );
  }
}
