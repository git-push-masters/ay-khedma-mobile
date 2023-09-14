import 'package:ay_khedma/core/helper/widgets/custom_button.dart';
import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/features/user_authentication/data/models/user_model/user_model.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../../core/helper/global_var.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../../../../user_authentication/presentation/views/widgets/sections/bio_and_service_type_section/bio_view_center_section.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.kOutLineBorder,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("أهلا بيك",
                style: Styles.textStyle12.copyWith(
                    fontSize: 10, color: AppColors.kUnderHeadLinesColor)),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Ebrahim",
              style: Styles.textStyle12,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
              color: AppColors.kPrimaryColor,
            )),
        IconButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  context: context,
                  builder: (contex) {
                    return const PuplishServiceSheet();
                  });
            },
            icon: const Icon(
              FontAwesomeIcons.plus,
              color: AppColors.kPrimaryColor,
              size: 20,
            ))
      ],
    );
  }
}

class PuplishServiceSheet extends StatelessWidget {
  const PuplishServiceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:EdgeInsets.only(
                top: 24,
                right: 24,
                left: 24,
                bottom: MediaQuery.of(context).viewInsets.bottom == 0
                    ? 16
                    : MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
           const BioViewCenterSection(),
           const SizedBox(height: 12,),
              CustomTextFeild(
              hinttext: "العنوان",
              width: Get.width * .75,
            ),
           const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFeild(
                  hinttext: "الحد الأدني",
                  width: Get.width * .4,
                ),
                CustomTextFeild(
                  hinttext: "الحد الأقصي",
                  width: Get.width * .4,
                ),
              ],
            ),
             const SizedBox(height: 12,),
            const CustomButton(text: "Puplish", textStyle: Styles.textStyle12),
          ],
        ),
      ),
    );
  }
}
