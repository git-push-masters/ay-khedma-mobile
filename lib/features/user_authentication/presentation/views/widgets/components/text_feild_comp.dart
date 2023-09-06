import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class TextFeildComp extends StatelessWidget {
  const TextFeildComp({
    super.key,
    required this.txt,
    required this.hintTxt,
    this.prefixIcon,
  });

  final String txt;
  final String hintTxt;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              txt,
              style: Styles.textStyle14,
            )),
        const SizedBox(
          height: 10,
        ),
        CustomTextFeild(
          hinttext: hintTxt,
          prefixIcon: prefixIcon,
        ),
      ],
    );
  }
}
