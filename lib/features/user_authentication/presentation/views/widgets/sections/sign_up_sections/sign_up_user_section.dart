import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../../core/helper/widgets/custom_text_field.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../../../data/models/rigester_data_model.dart';
import '../../components/general_components/text_feild_comp.dart';

class SignUpUserSection extends StatelessWidget {
  const SignUpUserSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RegisterDataModel? registerData;
    return Column(children: [
      TextFeildComp(
        validator: (value) =>
            value?.isEmpty ?? true ? "This field is required" : null,
        onSaved: (value) {
          registerData!.userName = value;
        },
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
        children: [
          Expanded(
              child: CustomTextFeild(
                  validator: (value) =>
                      value?.isEmpty ?? true ? "This field is required" : null,
                  onSaved: (value) {
                    registerData!.phoneNumber = value;
                  },
                  hinttext: "ادخل رقم الهاتف الخاص بك")),
          const SizedBox(
            width: 7,
          ),
          CustomTextFeild(
            validator: (value) =>
                      value?.isEmpty ?? true ? "" : null,
            onSaved: (value) {
              registerData!.countryCode = value;
            },
            hinttext: "20+",
            width: 60,
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      TextFeildComp(
        onSaved: (value) {
          registerData!.email = value;
        },
        txt: "الايميل",
        hintTxt: "ادخل الايميل الخاص بك",
      ),
      const SizedBox(
        height: 20,
      ),
      TextFeildComp(
        onSaved: (value) {
          registerData!.identity = value;
        },
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
      TextFeildComp(
        validator: (value) =>
            value?.isEmpty ?? true ? "This field is required" : null,
        onSaved: (value) {
          registerData!.password = value;
        },
        txt: "كلمة المرور",
        hintTxt: "...........",
      ),
    ]);
  }
}
