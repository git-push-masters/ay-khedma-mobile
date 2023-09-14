import 'package:ay_khedma/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../components/general_components/text_feild_comp.dart';

class BioViewCenterSection extends StatefulWidget {
  const BioViewCenterSection({super.key});

  @override
  State<BioViewCenterSection> createState() => _BioViewCenterSectionState();
}

class _BioViewCenterSectionState extends State<BioViewCenterSection> {
  List<String> servicesTypes = ["سباك", "نجار", "حداد", "نقاش", "حلاق"];
  String selectedService = 'سباك';
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
          SizedBox(
            width: Get.width,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                suffixIcon: const Icon(FontAwesomeIcons.arrowDownShortWide,
                    color: AppColors.kTextFieldHintColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        const BorderSide(color: AppColors.kOutLineBorder)),
              ),
              value: selectedService,
              items: servicesTypes
                  .map((service) => DropdownMenuItem(
                      value: service,
                      child: Text(
                        service,
                        style: Styles.textStyle12,
                      )))
                  .toList(),
              onChanged: (value) => setState(() => selectedService = value!),
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
