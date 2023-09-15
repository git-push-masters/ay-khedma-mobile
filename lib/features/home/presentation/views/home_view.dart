import 'dart:developer';

import 'package:ay_khedma/core/helper/global_var.dart';
import 'package:ay_khedma/core/utils/colors.dart';
import 'package:ay_khedma/features/home/presentation/view_models/cubit/sections_cubit.dart';
import 'package:ay_khedma/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/components/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SectionsCubit>(context).fetchSections();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: myUserData(token: token??""),
        builder: (context, snapshot)
      {
        if(snapshot.hasData)
        {
          return  HomeViewBody();
        }else
        {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}

// i think i can use future builder to display data
