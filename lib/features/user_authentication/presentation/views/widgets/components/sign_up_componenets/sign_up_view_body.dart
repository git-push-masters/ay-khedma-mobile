import 'package:flutter/material.dart';
import '../../sections/general_sections/header_sign_view_section.dart';
import '../../sections/sign_up_sections/form_register_user_section.dart';
import '../../sections/sign_up_sections/sign_up_user_section.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
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
            ],
          ),
        ),
      ),
    );
  }
}
