part of 'fetchrequests_cubit.dart';

abstract class FetchrequestsState extends Equatable {
  const FetchrequestsState();

  @override
  List<Object> get props => [];
}

class FetchrequestsInitial extends FetchrequestsState {}

class FetchrequestsLoading extends FetchrequestsState {}

class FetchrequestsSuccess extends FetchrequestsState {
  final List<RequestsModel> requestsModel;

  const FetchrequestsSuccess(this.requestsModel);
}

class FetchrequestsFailure extends FetchrequestsState {
  final String errMessage;

  const FetchrequestsFailure(this.errMessage);
}
