import 'dart:developer';

import 'package:ay_khedma/core/helper/global_var.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/features/home/presentation/view_models/cubit/sections_cubit.dart';
import 'package:ay_khedma/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_models/cubit/fetchrequests_cubit.dart';
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
              return const HomeViewBody();
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

// i think i can use future builder to display data
