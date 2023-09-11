import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/login_cubit/login_cubit.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/sign_in_components/forgot_pass_and_remember_me.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../components/general_components/text_feild_comp.dart';

class SignInUserSection extends StatefulWidget {
  const SignInUserSection({super.key});

  @override
  State<SignInUserSection> createState() => _SignInUserSectionState();
}

class _SignInUserSectionState extends State<SignInUserSection> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? phoneNumber, password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          TextFeildComp(
            validator: (value) =>
                value?.isEmpty ?? true ? "Feild is requierd" : null,
            onSaved: (value) {
              phoneNumber = value;
            },
            txt: "رقم الهاتف",
            hintTxt: "ادخل الإيميل الخاص بك",
          ),
          const SizedBox(
            height: 22,
          ),
          TextFeildComp(
            validator: (value) =>
                value?.isEmpty ?? true ? "Feild is requierd" : null,
            onSaved: (value) {
              password = value;
            },
            txt: "كلمة المرور",
            hintTxt: "...........",
          ),
          const SizedBox(
            height: 10,
          ),
          const ForgotPasswordAndRememberMe(),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<LoginCubit>(context).loginUser(
                      phoneNumber: phoneNumber!, password: password!);
                }else
                {
                  setState(() {
                    autoValidateMode = AutovalidateMode.always;
                  });
                }
              },
              backgroundColor: AppColors.kPrimaryColor,
              text: "تسجيل الدخول",
              textStyle: Styles.textStyle12
                  .copyWith(color: AppColors.kTextbuttonColor),
              height: 50),
        ],
      ),
    );
  }
}
