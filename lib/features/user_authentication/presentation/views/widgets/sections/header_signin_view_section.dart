import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HeaderSignViewSection extends StatelessWidget {
  const HeaderSignViewSection({super.key, required this.headText, required this.undertext});

final String headText;
final String undertext;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AssetsData.logo, height:70 ,),
              const SizedBox(height: 17,),
              Text( headText, style: Styles.textStyle24,),
              const SizedBox(height: 7,),
               Text(undertext, style: Styles.textStyle12.copyWith(
                color: AppColors.kUnderHeadLinesColor
               ),),
      ],
    );
  }
}