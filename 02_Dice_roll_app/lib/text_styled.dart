import 'package:flutter/material.dart';

class TextStyled extends StatelessWidget {
  const TextStyled(String text, {super.key}) : this.text = text;

  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
          color: Colors.white,
        ));
  }
}
