import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';

class GoogleAndAppleComp extends StatelessWidget {
  const GoogleAndAppleComp({super.key, required this.txt, required this.image});

  final String txt;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: AppColors.kSmall2ContainersColor,
            borderRadius: BorderRadius.circular(19),
            border: Border.all(color: AppColors.kSmallContainersColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(txt),
            const SizedBox(
              width: 5,
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
