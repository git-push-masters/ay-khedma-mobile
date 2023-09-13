import 'package:flutter/material.dart';

import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class ChooseUserType extends StatelessWidget {
  const ChooseUserType({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("اختر نوع حسابك", style: Styles.textStyle14,),
        const SizedBox(height: 10,),
        Row(
          children: [
            
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16) ,
                  border: Border.all(color: AppColors.kOutLineBorder),
                ),
                child:const Center(child:  Text("مقدم الخدمة")),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16) ,
                  border: Border.all(color: AppColors.kPrimaryColor),
                  color: AppColors.kPrimaryColor.withOpacity(.3)
                ),
                child:const Center(child:  Text("طالب الخدمة")),
              ),
            ),
            
          ],
        )
      ],
    );
  }
}