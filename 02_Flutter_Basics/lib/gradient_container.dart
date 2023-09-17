import 'package:flutter/material.dart';
import './text_styled.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(220, 249, 248, 248),
            Color.fromARGB(67, 0, 0, 0)
          ])),
      child: const Center(
        child: TextStyled(),
      ),
    );
  }
}
