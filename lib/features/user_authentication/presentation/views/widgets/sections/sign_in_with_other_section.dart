import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/colors.dart';
import '../components/google_and_apple_container.dart';
import '../components/sign_in_with_comp.dart';

class SignInWithOthersSection extends StatelessWidget {
  const SignInWithOthersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignInWithComp(),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: const [
            GoogleAndAppleComp(
              txt: "Apple Id",
              image: AssetsData.iconApple,
            ),
            SizedBox(
              width: 15,
            ),
            GoogleAndAppleComp(
              txt: "Google",
              image: AssetsData.iconGoogle,
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ليس لديك حساب بعد؟", style: Styles.textStyle12.copyWith(color: AppColors.kUnderHeadLinesColor),),       
            const Text("  "),     
            Text("التسجيل", style: Styles.textStyle12.copyWith(decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
            
          ],
        )
      ],
    );
  }
}
