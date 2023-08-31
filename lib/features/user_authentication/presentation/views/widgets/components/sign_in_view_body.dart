import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../sections/header_signin_view_section.dart';
import '../sections/sign_in_user_section.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(44),
        child: Column(
          children:const[
            HeaderSignInViewSection(),
           SizedBox(height:55 ,),
           SignInUserSection(),
          ],
        ),
      ) ,);
  }
}

