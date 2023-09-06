import 'package:flutter/material.dart';

class CustomTxetRich extends StatelessWidget {
  const CustomTxetRich({
    super.key,
    required this.txt1,
    required this.txt2,
    required this.textStyle1,
    required this.textStyle2,
  });

  final String txt1;
  final String txt2;
  final TextStyle textStyle1;
  final TextStyle textStyle2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: txt1,
          style: textStyle1,
        ),
        TextSpan(text: txt2, style: textStyle2),
      ]),
    );
  }
}
