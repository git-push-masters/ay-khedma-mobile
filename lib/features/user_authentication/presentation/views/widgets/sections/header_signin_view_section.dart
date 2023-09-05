import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HeaderSignInViewSection extends StatelessWidget {
  const HeaderSignInViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo, height:70 ,),
              const SizedBox(height: 17,),
              const Text("أهلا بعودتك", style: Styles.textStyle24,),
              const SizedBox(height: 7,),
               Text("من فضلك سجل بياناتك للدخول", style: Styles.textStyle12.copyWith(
                color: AppColors.kUnderHeadLinesColor
               ),),
      ],
    );
  }
}