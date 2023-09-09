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
    required String token,
  }) async{
    emit(RegisterLoading());
   var result = await userAuthRepo.registerUser(
        name: name, phoneNumber: phoneNumber, password: password, token: token);
      result.fold((failure) {
        emit(RegisterFailure(failure.errorMessage));
      }, (success){
        emit(RegisterSuccess());
      });
  }
}
