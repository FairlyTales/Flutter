import 'package:flutter/material.dart';
import './text_styled.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorBegin, this.colorEnd, {super.key});

  final Color colorBegin;
  final Color colorEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            colorBegin,
            colorEnd,
          ])),
      child: const Center(
        child: TextStyled('lol'),
      ),
    );
  }
}
