import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../sections/header_signin_view_section.dart';
import '../sections/sign_in_user_section.dart';
import '../sections/sign_in_with_other_section.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderSignViewSection(
                headText: "أهلا بعودتك",
                undertext: "من فضلك سجل بياناتك للدخول",
              ),
              SizedBox(
                height: 45,
              ),
              SignInUserSection(),
              SizedBox(
                height: 25,
              ),
              SignInWithOthersSection()
            ],
          ),
        ),
      ),
    );
  }
}

