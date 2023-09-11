import 'package:ay_khedma/core/helper/widgets/custom_button.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/choose_avatar_components/choose_avatar_view_body_center_section.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/choose_avatar_components/choose_avatar_view_body_header_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../core/utils/styles.dart';

class ChooseAvatarViewBody extends StatelessWidget {
  const ChooseAvatarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: ChooseAvatarViewBodyHeaderSection()),
        Positioned(
            left: 0,
            right: 0,
            bottom: Get.height * .2,
            child: const ChooseAvatarViewBodyCenterSection()),
        Positioned(
          right: 0,
          left: 0,
          bottom: Get.height * .1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44,),
            child: CustomButton(
              
                onPressed: () {},
                text: "موافق",
                textStyle: Styles.textStyle12.copyWith(color: Colors.white)),
          ),
        ),
        Positioned(
            bottom: Get.height * .04,
            left: Get.width*.06,
            child: TextButton(
                onPressed: () {},
                child:  Text(
                  "تخطى",
                   style: Styles.textStyle12.copyWith(color: AppColors.kPrimaryColor),
                  selectionColor: AppColors.kPrimaryColor,
                )))
      ],
    );
  }
}
