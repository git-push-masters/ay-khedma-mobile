import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../../core/utils/assets.dart';

class ChooseAvatarViewBodyCenterSection extends StatelessWidget {
  const ChooseAvatarViewBodyCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
            bottom: 10,
            right: 0,
            child: Image.asset(
              AssetsData.addAvatarCenter3,
            )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AssetsData.addAvatarCenter2,
            )),
        Positioned(
            bottom: 0,
            top: Get.height * .05,
            child: Image.asset(
              AssetsData.addAvatarCenter1,
            )),
      ],
    );
  }
}
