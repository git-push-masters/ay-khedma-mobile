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
              HeaderSignInViewSection()
              
            ],
          ),
        ),
      ) ,);
  }
}
