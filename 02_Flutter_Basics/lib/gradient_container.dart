import 'dart:math';
import 'package:flutter/material.dart';
import './text_styled.dart';

final _random = Random();
const int min = 1;
const int max = 6;

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colorBegin, this.colorEnd, {super.key});

  final Color colorBegin;
  final Color colorEnd;

  @override
  State<StatefulWidget> createState() {
    return _GradientContainerState(colorBegin, colorEnd);
  }
}

class _GradientContainerState extends State<GradientContainer> {
  _GradientContainerState(this.colorBegin, this.colorEnd);

  final Color colorBegin;
  final Color colorEnd;
  int imageIndex = 1;

  void handleRollDice() {
    imageIndex = min + _random.nextInt(max - min);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            colorBegin,
            colorEnd,
          ])),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$imageIndex.png',
            width: 250,
          ),
          ElevatedButton(
            onPressed: handleRollDice,
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    top: 15, left: 15, bottom: 15, right: 15),
                backgroundColor: Colors.indigo,
                textStyle: const TextStyle(fontSize: 24)),
            child: const TextStyled('Roll dice'),
          )
        ],
      )),
    );
  }
}
