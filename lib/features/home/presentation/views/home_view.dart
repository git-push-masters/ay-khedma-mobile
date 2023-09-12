import 'dart:developer';

import 'package:ay_khedma/core/helper/auth_contain.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:flutter/material.dart';
import 'widgets/components/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}


Future <Map<String, dynamic>> myUserData( { required String  token}) async
{
  Map<String, dynamic> data = await ApiService().get(endPoint: "auth/me", token: token);
  log(token.toString());
    log(data.toString());
    return data;
}
