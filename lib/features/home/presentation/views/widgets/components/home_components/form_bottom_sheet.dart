import 'package:ay_khedma/features/home/presentation/view_models/cubit/fetchrequests_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../../core/helper/global_var.dart';
import '../../../../../../../core/helper/widgets/custom_button.dart';
import '../../../../../../../core/helper/widgets/custom_text_field.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../../../../user_authentication/presentation/views/widgets/sections/bio_and_service_type_section/bio_view_center_section.dart';
import '../../../../view_models/cubit/request_cubit.dart';

class PuplishServiceSheet extends StatefulWidget {
  const PuplishServiceSheet({super.key});

  @override
  State<PuplishServiceSheet> createState() => _PuplishServiceSheetState();
}

class _PuplishServiceSheetState extends State<PuplishServiceSheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, description, durationRange, sectionId, maxPrice, minPrice;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: 24,
            right: 24,
            left: 24,
            bottom: MediaQuery.of(context).viewInsets.bottom == 0
                ? 16
                : MediaQuery.of(context).viewInsets.bottom),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const BioViewCenterSection(),
              const SizedBox(
                height: 12,
              ),
              CustomTextFeild(
                onSaved: (value) {
                  title = value;
                },
                hinttext: "العنوان",
                width: Get.width * .75,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFeild(
                onSaved: (value) {
                  description = value;
                },
                hinttext: "الوصف",
                width: Get.width * .75,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextFeild(
                onSaved: (value) {
                  durationRange = value;
                },
                hinttext: "المده المحدده",
                width: Get.width * .75,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextFeild(
                    onSaved: (value) {
                      minPrice = value;
                    },
                    hinttext: "الحد الأدني",
                    width: Get.width * .4,
                  ),
                  CustomTextFeild(
                    onSaved: (value) {
                      maxPrice = value;
                    },
                    hinttext: "الحد الأقصي",
                    width: Get.width * .4,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      BlocProvider.of<RequestCubit>(context).postRequest(
                          title: title!,
                          description: description!,
                          maxPrice: int.parse(
                              maxPrice!.replaceAll(RegExp(r'[^0-9]'), '')),
                          durationRange: durationRange!,
                          sectionId: int.tryParse(selectedSection!)?? 1,
                          token: token!);
                          Get.back();
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: "Puplish",
                  textStyle: Styles.textStyle12.copyWith(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
