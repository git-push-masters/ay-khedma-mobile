import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../components/general_components/text_feild_comp.dart';

class BioViewCenterSection extends StatelessWidget {
  const BioViewCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "اختر نوع الخدمة التي تقدمها",
                style: Styles.textStyle14,
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: Get.width,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.kOutLineBorder),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                Text(
                  "اختر الخدمة",
                  style: Styles.textStyle12
                      .copyWith(color: AppColors.kTextFieldHintColor),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Icon(FontAwesomeIcons.arrowDownShortWide,
                    color: AppColors.kTextFieldHintColor),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          const TextFeildComp(
            hintTxt: 'تعريف عن الخدمة....',
            txt: 'اكتب تعريفا',
            maxLines: 7,
          )
        ],
      ),
    );
  }
}
