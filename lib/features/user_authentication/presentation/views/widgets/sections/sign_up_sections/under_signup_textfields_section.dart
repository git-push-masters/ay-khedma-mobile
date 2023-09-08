import 'package:ay_khedma/core/utils/app_router.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/general_components/custom_text_rich.dart';
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
            CustomTxetRich(
                txt1: "بتسجيلك انت توافق علي",
                txt2: "الشروط والأحكام",
                textStyle1: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColors.kUnderHeadLinesColor),
                textStyle2: Styles.textStyle12
                    .copyWith(color: AppColors.kPrimaryColor)),
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
            onPressed: () =>
                GoRouter.of(context).push(AppRouter.kBioAndServiceTypeRoute),
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
