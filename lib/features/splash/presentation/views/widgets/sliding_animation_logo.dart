import 'package:ay_khedma/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SlidingLogoAnimated extends StatelessWidget {
  const SlidingLogoAnimated({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Center(
            child: Image.asset(AssetsData.logo)
          ),
        );
      }
    );
  }
}