import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/sections/sign_up_sections/under_signup_textfields_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../../core/helper/widgets/custom_text_field.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../../../data/models/rigester_data_model.dart';
import '../../../../view_models/cubits/register_cubit/register_cubit.dart';
import '../../components/general_components/text_feild_comp.dart';

class SignUpUserSection extends StatefulWidget {
  const SignUpUserSection({
    super.key,
     
  });

  @override
  State<SignUpUserSection> createState() => _SignUpUserSectionState();
}

class _SignUpUserSectionState extends State<SignUpUserSection> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? userName, phoneNumber, password, countryCode, email, identity;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(children: [
        TextFeildComp(
          validator: (value) =>
              value?.isEmpty ?? true ? "This field is required" : null,
          onSaved: (value) {
            userName = value;
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
                      phoneNumber = value;
                    },
                    hinttext: "ادخل رقم الهاتف الخاص بك")),
            const SizedBox(
              width: 7,
            ),
            CustomTextFeild(
              validator: (value) =>
                        value?.isEmpty ?? true ? "" : null,
              onSaved: (value) {
               countryCode = value;
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
            email = value;
          },
          txt: "الايميل",
          hintTxt: "ادخل الايميل الخاص بك",
        ),
        const SizedBox(
          height: 20,
        ),
        TextFeildComp(
          onSaved: (value) {
            identity = value;
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
           password = value!;
          },
          txt: "كلمة المرور",
          hintTxt: "...........",
        ),
        const SizedBox(
              height: 15,
            ),
            UnderSignUpTextFieldsSection(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<RegisterCubit>(context).rigesterUser(
                      name: userName!,
                      phoneNumber: phoneNumber!, 
                      password: password!,
                      );
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            )
      ]),
    );
  }
}
