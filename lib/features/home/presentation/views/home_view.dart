import 'dart:developer';

import 'package:ay_khedma/core/helper/auth_contain.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:flutter/material.dart';
import '../../../user_authentication/data/models/user_model/user_model.dart';
import 'widgets/components/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}


Future <UserModel> myUserData( { required String  token}) async
{
  Map<String, dynamic> data = await ApiService().get(endPoint: "auth/me", token: token);
  log(token.toString());
    log(data.toString());
    return UserModel.fromJson(data);
}
