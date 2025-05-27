import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'gen/assets.gen.dart';

class GradientDivider extends StatelessWidget {
  final double screenWidth;

  const GradientDivider({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 55,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.red,
                Color(0xFF6495ED),
                Colors.black,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(7, (index) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Lottie.asset(
                  height: 57,
                  Assets.animation1,
                  repeat: true,
                  animate: true,
                ),
              ),
            );
          }),
        )

      ],
    );
  }
}
