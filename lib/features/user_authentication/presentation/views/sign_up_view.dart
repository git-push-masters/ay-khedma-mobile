import 'package:ay_khedma/core/utils/app_router.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/register_cubit/register_cubit.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/bio_and_service_type_view.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/sign_up_componenets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/helper/widgets/custom_snackbar.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<RegisterCubit, RegisterState>(
      listener: ((context, state) {
        if (state is RegisterSuccess) {
          Get.to(()=> const BioAndServiceTypeView());
        }
        if (state is RegisterFailure) {
          customSnackBar(context, state.errMessage);
        }
      }),
      builder: ((context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is RegisterLoading ? true : false,
            child: const SignUpViewBody());
            
      }),
    ));
  }
}
