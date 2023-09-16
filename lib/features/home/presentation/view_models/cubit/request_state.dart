part of 'request_cubit.dart';

abstract class RequestState extends Equatable {
  const RequestState();

  @override
  List<Object> get props => [];
}

class RequestInitial extends RequestState {}

class RequestLoading extends RequestState {}

class RequestFailure extends RequestState {
  final String errMessage;

  const RequestFailure(this.errMessage);
}

class RequestSuccess extends RequestState {
  final RequestsModel requestsModel;

  const RequestSuccess(this.requestsModel);
}
