import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';

class UnderSignUpTextFieldsSection extends StatelessWidget {
  const UnderSignUpTextFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.error_outline,
              size: 15,
              color: AppColors.kUnderHeadLinesColor,
            ),
            Text(
              "يجب أن تكون كلمة مرورك من 8 ألي 15 حرفا",
              style: Styles.textStyle12
                  .copyWith(color: AppColors.kUnderHeadLinesColor),
            ),
          ],
        ),
        SizedBox(
          height: Get.height * .03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "بتسجيلك انت توافق علي ",
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.normal,
                        color: AppColors.kUnderHeadLinesColor)),
                TextSpan(
                    text: "الشروط والأحكام",
                    style: Styles.textStyle12
                        .copyWith(color: AppColors.kPrimaryColor)),
              ]),
            ),
            Row(
              children: [
                const Text("تذكرني", style: Styles.textStyle12),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_box_outline_blank,
                      color: AppColors.kOutLineBorder,
                    ))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
            backgroundColor: AppColors.kPrimaryColor,
            text: "التسجيل",
            textStyle: Styles.textStyle12.copyWith(color: Colors.white),
            height: 50),
            const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "لديك حساب بالفعل؟",
              style: Styles.textStyle12
                  .copyWith(color: AppColors.kUnderHeadLinesColor),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: Text("تسجيل الدخول",
                  style: Styles.textStyle12.copyWith(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        )
      ],
    );
  }
}
