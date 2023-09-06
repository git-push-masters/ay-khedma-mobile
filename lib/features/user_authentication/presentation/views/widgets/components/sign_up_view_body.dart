import 'package:flutter/material.dart';
import '../sections/header_signin_view_section.dart';
import '../sections/sign_up_user_section.dart';
import '../sections/under_signup_textfields_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 36, right: 36, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 50),
              HeaderSignViewSection(
                headText: "أهلا بيك",
                undertext: "من فضلك سجل بياناتك للدخول",
              ),
              SizedBox(
                height: 45,
              ),
              SignUpUserSection(),
              SizedBox(
                height: 15,
              ),
              UnderSignUpTextFieldsSection()
            ],
          ),
        ),
      ),
    );
  }
}

