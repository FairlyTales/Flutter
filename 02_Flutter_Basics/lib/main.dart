import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(220, 249, 248, 248),
              Color.fromARGB(67, 0, 0, 0)
            ])),
        child: const Center(
          child: Text('lol', style: TextStyle(
            color: Colors.black54,
          )),
        ),
      ),
    ),
  ));
}

// class MyApp extends StatelessWidget {
//
// }
