import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../components/bio_and_service_type_components/under_text_fields_bio_view.dart';

class BioViewBottomSection extends StatelessWidget {
  const BioViewBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        children: [
          const UnderTxetFeildsBioViw(
            txt: "بريدى الإلكترونى",
          ),
          const SizedBox(
            height: 10,
          ),
          const UnderTxetFeildsBioViw(
            txt: "رقم هاتفي",
          ),
          const SizedBox(
            height: 10,
          ),
          const UnderTxetFeildsBioViw(
            txt: "موقعي",
          ),
          SizedBox(
            height: Get.height * .06,
          ),
          CustomButton(
              text: "موافق",
              textStyle: Styles.textStyle12.copyWith(color: Colors.white)),
              SizedBox(
            height: Get.height * .06,
          ),
        ],
      ),
    );
  }
}