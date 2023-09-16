import 'package:ay_khedma/core/helper/widgets/custom_button.dart';
import 'package:ay_khedma/core/helper/widgets/custom_snackbar.dart';
import 'package:ay_khedma/core/helper/widgets/custom_text_field.dart';
import 'package:ay_khedma/features/home/presentation/view_models/cubit/request_cubit.dart';
import 'package:ay_khedma/features/user_authentication/data/models/user_model/user_model.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../../../core/helper/global_var.dart';
import '../../../../../../../core/utils/colors.dart';
import '../../../../../../../core/utils/styles.dart';
import '../../../../../../user_authentication/presentation/views/widgets/sections/bio_and_service_type_section/bio_view_center_section.dart';
import 'form_bottom_sheet.dart';

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
            image: DecorationImage(
                image: NetworkImage("$baseUrl${myUserModel!.body!.avatar!}")),
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
            Text(
              myUserModel!.body!.name,
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
                    return BlocBuilder<RequestCubit, RequestState>(
                      builder: (context, state) {
                        if (state is RequestSuccess) {
                          requestsModel = state.requestsModel;
                          // Get.back();
                        } else if (state is RequestFailure) {
                          // Get.snackbar("opps!", state.errMessage);
                        }
                        return ModalProgressHUD(
                            inAsyncCall: state is RequestLoading ? true : false,
                            child: const PuplishServiceSheet());
                      },
                    );
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
