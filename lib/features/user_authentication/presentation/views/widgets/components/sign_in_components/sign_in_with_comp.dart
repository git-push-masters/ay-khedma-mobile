import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SignInWithComp extends StatelessWidget {
  const SignInWithComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
            child: Divider(
          color: AppColors.kTextFieldHintColor,
          thickness: 1,
          height: 5,
        )),
        SizedBox(
          width: 6,
        ),
        Text(
          "او سجل دخول عبر",
          style: Styles.textStyle12,
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
            child: Divider(
          color: AppColors.kTextFieldHintColor,
          thickness: 1,
          height: 5,
        )),
      ],
    );
  }
}
