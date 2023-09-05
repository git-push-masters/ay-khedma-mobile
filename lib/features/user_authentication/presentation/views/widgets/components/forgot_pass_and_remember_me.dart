import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordAndRememberMe extends StatelessWidget {
  const ForgotPasswordAndRememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "هل نسي كلمه المرور؟",
          style: Styles.textStyle12
              .copyWith(color: AppColors.kUnderHeadLinesColor),
        ),
        Row(
          children: [
            Text("تذكرني", style:Styles.textStyle12
              .copyWith(color: AppColors.kUnderHeadLinesColor),),
              const SizedBox(width: 5,),
            IconButton(onPressed: (){}, icon:const Icon(Icons.check_box_outline_blank))
          ],
        )
      ],
    );
  }
}