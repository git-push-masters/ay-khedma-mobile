import 'dart:developer';

import 'package:ay_khedma/core/helper/global_var.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'widgets/components/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: myUserData(token: token ?? ""),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              myUserModel = snapshot.data;
              log(myUserModel.toString());
              return const HomeViewBody();
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.kPrimaryColor,
              ));
            }
          }),
    );
  }
}

// i think i can use future builder to display data
