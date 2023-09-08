import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';
class ChooseAvatarViewBodyHeaderSection extends StatelessWidget {
  const ChooseAvatarViewBodyHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: Get.height * .05),
            Row(
              children:const [
                 SizedBox(
                  width: 10,
                ),
                 Icon(
                  FontAwesomeIcons.arrowRight,
                  color: AppColors.kPrimaryColor,
                ),
                 SizedBox(
                  width: 70,
                ),
                 Text("اختر الصورة الشخصية الخاصة بك",
                    style: Styles.textStyle14),
                    SizedBox(
                  height: 70,
                ),
              ],
            ),
            Stack(
              children:const [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.kOutLineBorder,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: AppColors.kUnderHeadLinesColor,
                  ),
                ),
                Positioned(
                   bottom: 4,
                    right: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.kPrimaryColor,
                     
                      foregroundColor: AppColors.kSmallContainersColor,
                       child: Icon(
                        FontAwesomeIcons.pen,
                      ),
                    )),
              ],
            ),  ])
;
  }
}