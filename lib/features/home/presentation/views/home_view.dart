import 'package:ay_khedma/core/helper/global_var.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_models/cubit/sections_cubit.dart';
import 'widgets/components/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key,  this.loginToken});
 final String? loginToken;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<SectionsCubit>(context).fetchSections();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: myUserData(token: widget.loginToken ?? token!),
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