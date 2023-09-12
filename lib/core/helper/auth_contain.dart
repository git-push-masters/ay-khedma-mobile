import 'dart:developer';

import 'package:ay_khedma/features/user_authentication/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/presentation/views/home_view.dart';

class AuthContainer extends StatefulWidget {
  const AuthContainer({super.key});

  @override
  State<AuthContainer> createState() => _AuthContainerState();
}

class _AuthContainerState extends State<AuthContainer> {
  String? token;
  bool initial = true;
  @override
  Widget build(BuildContext context) {
   
   if(initial)
   {
    SharedPreferences.getInstance().then((sharedPreferencesValue){
      setState(() {
        initial = false;
        token = sharedPreferencesValue.getString('token');
        log(token.toString());
      });
    });
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
   }else
   {
    if(token == null)
    {
      return const SignInView();
    }else
    {
      return const HomeView();
    }
   }
   
  }
}
