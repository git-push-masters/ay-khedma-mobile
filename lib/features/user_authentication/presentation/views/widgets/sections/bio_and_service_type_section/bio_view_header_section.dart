import 'package:ay_khedma/core/utils/assets.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BioViewHeaderSection extends StatelessWidget {
  const BioViewHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 1,
          top: 50,  
          child: Image.asset(AssetsData.bioHeader2, height: Get.height * .35,)),
        Positioned(
          left: Get.width * .15 ,
          top: -22,
          child: Image.asset(AssetsData.bioHeader1, height: Get.height * .35,)),
        Row(
          children: [
            IconButton(
              padding:const EdgeInsets.only(right: 20),
              onPressed: (){}, icon: const Icon(FontAwesomeIcons.arrowRight, color: AppColors.kPrimaryColor,)),
          ],
        )  
      ],
    ) ;
  }
}