import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      this.borderRadius,
      required this.text,
      required this.textStyle,
      this.onPressed,
      required this.height});

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final TextStyle textStyle;
  final void Function()? onPressed;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: Get.width,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
