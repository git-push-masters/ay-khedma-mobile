import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../sections/header_signin_view_section.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(44),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children:const[
              HeaderSignInViewSection(),
             SizedBox(height:55 ,),
             SignInUserSection(),
            ],
          ),
        ),
      ) ,);
  }
}

class SignInUserSection extends StatelessWidget {
  const SignInUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
        Text("الأميل", style: Styles.textStyle12,),
        CustomTextFeild(hinttext: "أدخل الأميل الخاص بك"),
        Text("كلمه المرور", style: Styles.textStyle12,),
        CustomTextFeild(hinttext: "أدخل كلمه المرور الخاصه بك"),
      ],
    );
  }
}