import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/data/models/sections/repos/home_repo_implement.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(),
  );
  getIt.registerSingleton<UserAuthRepoImplement>(
    UserAuthRepoImplement(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(getIt.get<ApiService>()));
}
