import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SignInUserSection extends StatelessWidget {
  const SignInUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
         Align(
          alignment: Alignment.centerRight,
          child: Text("الايميل", style: Styles.textStyle14,)),
           SizedBox(height: 10,),
        CustomTextFeild(hinttext: "أدخل الايميل الخاص بك"),
        SizedBox(height: 22,),
         Align(
          alignment: Alignment.centerRight,
          child: Text("كلمه المرور", style: Styles.textStyle14,)),
          SizedBox(height: 10,),
         CustomTextFeild(hinttext: "..........."),
      ],
    );
  }
}