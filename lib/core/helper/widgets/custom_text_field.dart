import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      required this.hinttext,
      this.maxLines = 1,
      this.onSaved,
      this.onCahnge,
      this.validator,
       this.width});

  final String hinttext;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onCahnge;
  final String? Function(String?)? validator;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?? Get.width,
      child: TextFormField(
        validator: validator,
        onChanged: onCahnge,
        onSaved: onSaved,
        decoration: InputDecoration(
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(AppColors.kPrimaryColor.withOpacity(.5)),
            hintText: hinttext,
            hintStyle: Styles.textStyle12
                .copyWith(color: AppColors.kTextFieldHintColor)),
        maxLines: maxLines,
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? AppColors.kOutLineBorder));
  }
}
