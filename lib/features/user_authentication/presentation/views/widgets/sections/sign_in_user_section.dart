import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/helper/widgets/custom_button.dart';
import '../components/forgot_pass_and_remember_me.dart';

class SignInUserSection extends StatelessWidget {
  const SignInUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "الايميل",
              style: Styles.textStyle14,
            )),
        const SizedBox(
          height: 10,
        ),
        const CustomTextFeild(hinttext: "أدخل الايميل الخاص بك"),
        const SizedBox(
          height: 22,
        ),
        const Align(
            alignment: Alignment.centerRight,
            child: Text(
              "كلمه المرور",
              style: Styles.textStyle14,
            )),
        const SizedBox(
          height: 10,
        ),
         const CustomTextFeild(hinttext: "..........."),
        const SizedBox(
          height: 10,
        ),
        const ForgotPasswordAndRememberMe(),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
            backgroundColor: AppColors.kPrimaryColor,
            text: "تسجيل الدخول",
            textStyle:
                Styles.textStyle12.copyWith(color: AppColors.kTextbuttonColor),
            height: 50),
      ],
    );
  }
}


