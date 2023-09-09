import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/utils/styles.dart';

class TextFeildComp extends StatelessWidget {
  const TextFeildComp({
    super.key,
    required this.txt,
    required this.hintTxt,
    this.prefixIcon,
    this.maxLines, this.onSaved,
  });

  final String txt;
  final String hintTxt;
  final Widget? prefixIcon;
  final int? maxLines;
  final void Function(String?)? onSaved;
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
          onSaved: onSaved,
          hinttext: hintTxt,
          prefixIcon: prefixIcon,
          maxLines: maxLines ?? 1,
        ),
      ],
    );
  }
}
