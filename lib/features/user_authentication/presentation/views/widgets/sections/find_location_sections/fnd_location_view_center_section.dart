import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class FindLocationViewCenterSection extends StatelessWidget {
  const FindLocationViewCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AssetsData.findLocationCenter1,
                  height: Get.height * .25,
                ),
                Image.asset(
                  AssetsData.findLocationCenter2,
                )
              ],
            ),
            const Text("ما هو موقعك ؟", style: Styles.textStyle16),
            const SizedBox(
              height: 14,
            ),
            Text(
              "يجب أن نعرف موقعك حتي نوفر لك الخدمات القريبة"
              " من موقعك",
              style: Styles.textStyle12
                  .copyWith(color: AppColors.kUnderHeadLinesColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Get.height * .08,
            ),
            CustomButton(
                text: "السماح بإستخدام الموقع",
                textStyle: Styles.textStyle12.copyWith(color: Colors.white))
          ],
        ));
  }
}
