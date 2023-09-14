import 'dart:developer';

import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.userAuthRepo) : super(RegisterInitial());

  final UserAuthRepo userAuthRepo;

  Future<void> rigesterUser({
    required String name,
    required String phoneNumber,
    required String password,
  }) async {
    emit(RegisterLoading());
    try {
      var result = await userAuthRepo.registerUser(
          name: name, phoneNumber: phoneNumber, password: password);
      log(result.toString());
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure(e.toString()));
      log(e.toString());
    }
  }
}
