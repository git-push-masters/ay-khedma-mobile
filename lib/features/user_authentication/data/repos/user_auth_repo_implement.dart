import 'dart:convert';
import 'dart:developer';
import 'package:ay_khedma/features/user_authentication/presentation/view_models/cubits/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../home/presentation/views/home_view.dart';
import '../models/user_model/user_model.dart';

class UserAuthRepoImplement implements UserAuthRepo {
  final ApiService apiService;

  UserAuthRepoImplement(this.apiService);

  @override
  Future<Either<ApiFailures, dynamic>> vrefyUser(
      {required String phoneNumber,
      required String password,
      required String smsCode,
      required String token}) {
    throw UnimplementedError();
  }

  // login user methode
  @override
  Future<UserModel> loginUser({
    required String phoneNumber,
    required String password,
    required String token,
  }) async {
    Map<String, dynamic> body = {
      "phone": phoneNumber,
      "password": password,
    };
    String data = jsonEncode(body);

    Map<String, dynamic> response =
        await apiService.post(endPoint: "auth/login", body: data, token: token);
    UserModel userData = UserModel.fromJson(response);
    final SharedPreferences tokenPref = await SharedPreferences.getInstance();
    await tokenPref.setString('token', userData.body!.token!);
    await myUserData(token: userData.body!.token!);
    log(userData.toString());
    return userData;
  }
    
    // register user methode
  @override
  Future<UserModel> registerUser(
      /*{required String name,
      required String phoneNumber,
      required String password}*/) async {
    Map<String, dynamic> body = {
       "name": "name",
       "phone": "01000000000",
       "password": "123456789"
    };
    String data = jsonEncode(body);

    Map<String, dynamic> response =
        await apiService.post(endPoint: "auth/login", body: data);
    UserModel userData = UserModel.fromJson(response);
    log(userData.toString());
    return userData;
  }
}