import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

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
            // textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetsData.logo, height:70 ,),
              const SizedBox(height: 17,),
              const Text("أهلا بعودتك", style: Styles.textStyle24,),
               Text("من فضلك سجل بياناتك للدخول", style: Styles.textStyle12.copyWith(
                fontWeight: FontWeight.normal,
                color: AppColors.kUnderHeadLinesColor
               ),)
            ],
          ),
        ),
      ) ,);
  }
}