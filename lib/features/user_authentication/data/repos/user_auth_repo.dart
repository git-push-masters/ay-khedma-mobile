import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../models/user_model/user_model.dart';

abstract class UserAuthRepo {
  Future<UserModel> registerUser({
    required String name,
    required String phoneNumber,
    required String password,
  });

  Future<UserModel> loginUser(
      {required String phoneNumber,
      required String password,
      required String token});

  Future<Either<ApiFailures, dynamic>> vrefyUser(
      {required String phoneNumber,
      required String password,
      required String smsCode,
      required String token});
}
