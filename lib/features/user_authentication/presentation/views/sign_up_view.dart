import 'package:ay_khedma/core/utils/app_router.dart';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/register_cubit/register_cubit.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/sign_up_componenets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/utils/styles.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<RegisterCubit, RegisterState>(
      listener: ((context, state) {
        if (state is RegisterSuccess) {
          GoRouter.of(context).push(AppRouter.kBioAndServiceTypeRoute);
        }
        if (state is RegisterFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
              content: Text(
            state.errMessage,
            style: Styles.textStyle12.copyWith(color: Colors.white),
          )));
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
