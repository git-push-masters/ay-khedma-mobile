// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/sign_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/helper/widgets/custom_text_field.dart';
import '../../../../../../core/utils/styles.dart';
import '../sections/header_signin_view_section.dart';
import '../sections/sign_in_user_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 36,right: 36, top: 50),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HeaderSignViewSection(
                headText: "أهلا بيك",
                undertext: "من فضلك سجل بياناتك للدخول",
              ),
              SizedBox(
                height: 45,
              ),
              SignUpUserSection()
              
            ],
          ),
        ),
      ),
    );
  }
}
class SignUpUserSection extends StatelessWidget {
  const SignUpUserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const TextFeildSection(
          txt: "اسم المستخدم",
          hintTxt:"ادخل اسمك...",
        ),
        const SizedBox(
          height: 20,
        ),
        const TextFeildSection(
          txt:"رقم الهاتف",
          hintTxt:  "ادخل رقم الهاتف الخاص بك",
        ),
        const SizedBox(
          height: 20,
        ),
        const TextFeildSection(
          txt:"الايميل",
          hintTxt:  "ادخل الايميل الخاص بك",
        ),
        const SizedBox(
          height: 20,
        ),
        const TextFeildSection(
          txt:"ادخل صورة البطاقة الشخصية",
          hintTxt:  "اختر ملف...",
        ),
        const SizedBox(
          height: 20,
        ),
        const TextFeildSection(
          txt:"كلمة المرور",
          hintTxt:  "...........",
        ),
      ]
    );
  }
}
class TextFeildSection extends StatelessWidget {
  const TextFeildSection({super.key, required this.txt, required this.hintTxt,this.width, this.textFeild});
 
 final String txt;
 final String hintTxt;
 final double? width;
 final CustomTextFeild? textFeild;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Align(
                alignment: Alignment.centerRight,
                child: Text(
                  txt,
                  style: Styles.textStyle14,
                )),
                const SizedBox(
          height: 10,
        ),
         CustomTextFeild(hinttext:hintTxt, width: width ?? Get.width,),
      ],
    );
        
  }
}