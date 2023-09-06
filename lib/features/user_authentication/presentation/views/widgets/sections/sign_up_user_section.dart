import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../core/helper/widgets/custom_text_field.dart';
import '../../../../../../core/utils/colors.dart';
import '../../../../../../core/utils/styles.dart';
import '../components/text_feild_comp.dart';

class SignUpUserSection extends StatelessWidget {
  const SignUpUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TextFeildComp(
        txt: "اسم المستخدم",
        hintTxt: "ادخل اسمك...",
      ),
      const SizedBox(
        height: 20,
      ),
      const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "رقم الهاتف",
            style: Styles.textStyle14,
          )),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: const [
          Expanded(
              child: CustomTextFeild(hinttext: "ادخل رقم الهاتف الخاص بك")),
          SizedBox(
            width: 7,
          ),
          CustomTextFeild(
            hinttext: "20+",
            width: 60,
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      const TextFeildComp(
        txt: "الايميل",
        hintTxt: "ادخل الايميل الخاص بك",
      ),
      const SizedBox(
        height: 20,
      ),
      TextFeildComp(
        txt: "ادخل صورة البطاقة الشخصية",
        hintTxt: "اختر ملف...",
        prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.fileLines,
              color: AppColors.kTextFieldHintColor,
            )),
      ),
      const SizedBox(
        height: 20,
      ),
      const TextFeildComp(
        txt: "كلمة المرور",
        hintTxt: "...........",
      ),
    ]);
  }
}
