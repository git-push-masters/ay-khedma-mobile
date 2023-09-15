import 'package:ay_khedma/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../choose_avatar_view.dart';

class OtpViewBottomSection extends StatelessWidget {
  const OtpViewBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(AssetsData.otpCenter2),
            Image.asset(AssetsData.otpCenter1)
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: CustomButton(
              onPressed: () {
                Get.to(ChooseAvatarView());
              },
              text: "موافق",
              textStyle: Styles.textStyle12.copyWith(color: Colors.white)),
        )
      ],
    );
  }
}
