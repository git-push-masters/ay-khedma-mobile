import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/sections/sign_up_sections/sign_up_user_section.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/sections/sign_up_sections/under_signup_textfields_section.dart';
import 'package:flutter/material.dart';

class FormRegisterUser extends StatefulWidget {
  const FormRegisterUser({super.key});

  @override
  State<FormRegisterUser> createState() => _FormRegisterUserState();
}

class _FormRegisterUserState extends State<FormRegisterUser> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
            const SignUpUserSection(),
                  const SizedBox(
                    height: 15,
                  ),
                  UnderSignUpTextFieldsSection(
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                      }else
                      {
                        autoValidateMode = AutovalidateMode.always;
                        setState(() { });
                      }
                    },
                  )
        ],
      ),
    );
  }
}