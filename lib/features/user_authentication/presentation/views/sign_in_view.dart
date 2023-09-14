import 'package:ay_khedma/core/utils/app_router.dart';
import 'package:ay_khedma/features/home/presentation/views/home_view.dart';
import 'package:ay_khedma/features/user_authentication/data/models/user_model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../core/helper/widgets/custom_snackbar.dart';
import '../view_models/cubits/cubit/login_cubit.dart';
import 'widgets/components/sign_in_components/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            BlocProvider.of<LoginCubit>(context).userModel = state.userModel;
            Get.to(() => const HomeView());
          }
          if (state is LoginFailure) {
            customSnackBar(context, state.errMessage);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is LoginLoading ? true : false,
              child: const SignInViewBody());
        },
      ),
    );
  }
}
