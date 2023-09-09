import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:dartz/dartz.dart';

abstract class UserAuthRepo {
  Future<Either<ApiFailures, dynamic>> registerUser(
      {required String name,
      required String phoneNumber,
      required String password,
      required String token});

  Future<Either<ApiFailures, dynamic>> loginUser(
      {required String name, required String passwprd, required String token});

  Future<Either<ApiFailures, dynamic>> vrefyUser(
      {required String phoneNumber,
      required String password,
      required String smsCode,
      required String token});
}
