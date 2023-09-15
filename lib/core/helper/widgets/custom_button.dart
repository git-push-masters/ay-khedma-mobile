import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgroundColor,
      this.borderRadius,
      required this.text,
      required this.textStyle,
      this.onPressed,
      this.height,
      this.width});

  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final TextStyle textStyle;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? Get.width,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed: onPressed,
        child: Text(text, style: textStyle),
      ),
    );
  }
}
