import 'dart:developer';

import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/splash/presentation/views/splash_view.dart';
import 'package:ay_khedma/features/user_authentication/presentation/views/sign_in_view.dart';
import 'package:ay_khedma/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/presentation/views/home_view.dart';
import 'global_var.dart';

class AuthContainer extends StatefulWidget {
  const AuthContainer({super.key});

  @override
  State<AuthContainer> createState() => _AuthContainerState();
}

class _AuthContainerState extends State<AuthContainer> {
  bool initial = true;
  @override
  Widget build(BuildContext context) {
    if (initial) {
      SharedPreferences.getInstance().then((sharedPreferencesValue) {
        setState(() {
          token = sharedPreferencesValue.getString('token');
          log("tokenn: $token");
          initial = false;
        });
      });

      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      if (token == null) {
        return const SignInView();
      } else {
        return const MainScreen();
      }
    }
  }
}
