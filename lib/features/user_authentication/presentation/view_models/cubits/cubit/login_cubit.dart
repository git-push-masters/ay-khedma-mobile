import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/user_model/user_model.dart';
import '../../../../data/repos/user_auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.userAuthRepo) : super(LoginInitial());

  final UserAuthRepo userAuthRepo;
  UserModel? userModel;
  Future<void> loginUser({
    required String phoneNumber,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      var result = await userAuthRepo.loginUser(
          phoneNumber: phoneNumber,
          password: password,
          token: userModel?.body!.token! ?? "");
      emit(LoginSuccess(result));
    } catch (e) {
      emit(LoginFailure(e.toString()));
      log(e.toString());
    }
  }
}
