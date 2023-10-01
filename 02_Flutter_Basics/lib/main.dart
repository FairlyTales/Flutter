import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          Color.fromARGB(220, 249, 248, 248), Color.fromARGB(67, 0, 0, 0)),
    ),
  ));
}
