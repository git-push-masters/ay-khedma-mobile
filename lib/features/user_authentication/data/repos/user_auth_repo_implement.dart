import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/user_model/user_model.dart';

class UserAuthRepoImplement implements UserAuthRepo {
  final ApiService apiService;

  UserAuthRepoImplement(this.apiService);

  @override
  Future<Either<ApiFailures, dynamic>> registerUser({
    required String name,
    required String phoneNumber,
    required String password,
  }) async {
    Map<String, dynamic> body = {
      "name": name,
      "phone": phoneNumber,
      "password": password,
    };

    // String body = json.encode(data);
    try {
      var data = await apiService.post(endPoint: "/auth/register", body: body);
      log(data);
      return right(UserModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else if (e is UserModel) {
        return left(MyServerFailure.fromServerError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
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
  Future<UserModel> loginUser({
    required String phoneNumber,
    required String password,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    Map<String, dynamic> body = {
      "phone": phoneNumber,
      "password": password,
    };
    String data = jsonEncode(body);
    log("wait to response");
    http.Response response = await http.post(
        Uri.parse(
            "https://ay-khedma-backend-development.up.railway.app/api/auth/login"),
        body: data,
        headers: headers);
    log("response get it");
    if (response.statusCode == 200) {
      log("success");
      Map<String, dynamic> data = jsonDecode(response.body);
      log(data.toString());
      return UserModel.fromJson(data);
    } else {
      log(response.statusCode.toString());
      throw Exception();
    }

    //     Map<String, dynamic> body = {
    //   "phone": phoneNumber,
    //   "password": password,
    // };

    // String dataEncode = json.encode(body);
    // try {
    //   var data = await apiService.post(endPoint: "/auth/login", body: dataEncode);
    //   log(data);
    //   return right(UserModel.fromJson(data));
    // } catch (e) {
    //   if (e is DioException) {
    //     return left(ServerFailure.fromDioError(e));
    //   } else if (e is UserModel) {
    //     return left(MyServerFailure.fromServerError(e));
    //   } else {
    //     return left(ServerFailure(e.toString()));
    //   }
    // }
  }
}
