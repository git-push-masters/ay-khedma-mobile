import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/sign_in_components/forgot_pass_and_remember_me.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../components/general_components/text_feild_comp.dart';

class SignInUserSection extends StatelessWidget {
  const SignInUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFeildComp(
          txt:"الايميل" ,
          hintTxt:"ادخل الإيميل الخاص بك" ,
        ),
        const SizedBox(
          height: 22,
        ),
        const TextFeildComp(
          txt:"كلمة المرور" ,
          hintTxt:"..........." ,
        ),
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


