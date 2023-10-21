import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(220, 0, 0, 248),
            Color.fromARGB(240, 107, 15, 248),
          ])),
      child: const StartScreen(),
    )),
  ));
}
