import 'package:ay_khedma/core/helper/helper_services/api_service.dart';
import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';

class UserAuthRepoImplement implements UserAuthRepo {
  final ApiService apiService;

  UserAuthRepoImplement(this.apiService);
}
