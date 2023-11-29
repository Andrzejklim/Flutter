import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(255, 228, 155, 155), Color.fromARGB(255, 72, 94, 134)]),
      ),
    ),
  );
}

