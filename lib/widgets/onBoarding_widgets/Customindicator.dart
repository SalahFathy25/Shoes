import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Customindicator extends StatelessWidget {
  const Customindicator({super.key, required this.dotIndex});
  final int? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeSize: const Size.fromRadius(4),
        size: const Size.fromRadius(6),
        color: Colors.grey,
        activeColor: const Color(0xff5B9EE1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
