import 'dart:developer';

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
      try {
        var result =  await userAuthRepo.loginUser(
         phoneNumber: phoneNumber, password: password,);
         log(result.msgs.toString());
         emit(LoginSuccess());
      } catch (e) {
        emit(LoginFailure(e.toString()));
        log(e.toString());
      }
     
}
}