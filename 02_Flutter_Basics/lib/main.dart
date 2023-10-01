import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          const Color.fromARGB(220, 249, 248, 248), const Color.fromARGB(67, 0, 0, 0)),
    ),
  ));
}
