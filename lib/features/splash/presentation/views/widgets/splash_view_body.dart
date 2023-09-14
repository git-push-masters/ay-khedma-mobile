import 'dart:developer';

import 'package:ay_khedma/core/helper/auth_contain.dart';
import 'package:ay_khedma/core/helper/global_var.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/core/utils/app_router.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/core/utils/styles.dart';
import 'package:ay_khedma/features/home/presentation/views/home_view.dart';
import 'package:ay_khedma/features/splash/presentation/views/widgets/sliding_animation_logo.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/widgets/components/general_components/custom_text_rich.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../user_authentication/data/models/user_model/user_model.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * .35,
          ),
          SlidingLogoAnimated(slidingAnimation: slidingAnimation),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: CustomTxetRich(
                txt1: "Powerd by ",
                txt2: "Git Masters",
                textStyle1: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColors.kUnderHeadLinesColor),
                textStyle2: Styles.textStyle12,
              ))
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation =
        Tween<Offset>(begin: Offset(Get.width * .1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
  


  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(()=>const AuthContainer());
    });
  }
}



   //fetch user data

  Future <UserModel> myUserData( { required String  token}) async
{
  Map<String, dynamic> data = await ApiService().get(endPoint: "auth/me", token: token);
  log(token.toString());
    log(data.toString());
    return UserModel.fromJson(data);
}