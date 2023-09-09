import 'dart:developer';

import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:dartz/dartz.dart';

import '../models/user_model/user_model.dart';

class UserAuthRepoImplement implements UserAuthRepo {
  final ApiService apiService;

  UserAuthRepoImplement(this.apiService);

  @override
  Future<dynamic> registerUser(
      {required String name,
      required String phoneNumber,
      required String password,
      }) async {
    Map<String, dynamic> body= {
      "name": name,
      "phone": phoneNumber,
      "password": password,
    };

    // String body = json.encode(data);
    try {
      var data = await apiService.post(
          endPoint: "/auth/register", body: body);
          log(data);
      return UserModel.fromJson(data['body']);
      
    } catch (e) {
      return MyServerFailure(e.toString());
      
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> vrefyUser(
      {required String phoneNumber,
      required String password,
      required String smsCode,
      required String token}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, dynamic>> loginUser(
      {required String name, required String passwprd, required String token}) {
    throw UnimplementedError();
  }
}
