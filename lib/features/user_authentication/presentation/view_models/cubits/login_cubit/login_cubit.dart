import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/repos/user_auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.userAuthRepo) : super(LoginInitial());
 
  final UserAuthRepo userAuthRepo;
  Future<void> loginUser({
    required String phoneNumber,
    required String password,
  }) async{
    emit(LoginLoading());
      var result =  await userAuthRepo.loginUser(
         phoneNumber: phoneNumber, password: password,);
     result.fold(
      (failure) {
    emit(LoginFailure(failure.errorMessage));
      },
      (success) {
    emit(LoginSuccess());
      });
}
}