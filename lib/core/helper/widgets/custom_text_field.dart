import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.hinttext,
      this.maxLines = 1,
      this.onSaved,
      this.onCahnge,
      this.validator});

  final String hinttext;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onCahnge;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onCahnge,
      onSaved: onSaved,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(AppColors.kPrimaryColor.withOpacity(.5)),
        focusedBorder: buildBorder(),
        hintText: hinttext,
      ),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? AppColors.kTextFieldHintColor));
  }
}