part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {
 final UserModel userModel;
  const LoginSuccess(this.userModel);
}
class LoginFailure extends LoginState {
  final String errMessage;

  const LoginFailure(this.errMessage);
}
