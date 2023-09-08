import 'dart:convert';

import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class UserAuthRepoImplement implements UserAuthRepo {
  final ApiService apiService;

  UserAuthRepoImplement(this.apiService);

  @override
  Future<Either<ApiFailures, dynamic>> registerUser(
      {required String name,
      required String phoneNumber,
      required String password}) async {
    Map data = {
      "name": name,
      "phone": phoneNumber,
      "password": password,
    };

    String body = json.encode(data);
    try {
      var data = await apiService.post(endPoint: "/auth/register", body: body);
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
