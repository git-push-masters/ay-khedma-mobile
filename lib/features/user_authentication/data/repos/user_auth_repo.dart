import 'package:ay_khedma/core/helper/helper_services/api_failures.dart';
import 'package:dartz/dartz.dart';

abstract class UserAuthRepo {
  Future<Either<ApiFailures, dynamic>> registerUser(
      {required String name,
      required String phoneNumber,
      required String password});
}
