import 'package:flutter/material.dart';

class GradientDivider extends StatelessWidget {
  final double screenWidth;

  const GradientDivider({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
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
    );
  }
}
