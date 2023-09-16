import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/repos/home_repo.dart';
import '../../../data/models/requests_model/requests_model.dart';

part 'fetchrequests_state.dart';

class FetchrequestsCubit extends Cubit<FetchrequestsState> {
  FetchrequestsCubit(this.homeRepo) : super(FetchrequestsInitial());

  final HomeRepo homeRepo;

  Future <void> fetchRequests({required String token})async
  {
    emit(FetchrequestsLoading());
    try {
      var result = await homeRepo.fetchAllRequests(token: token);
      emit(FetchrequestsSuccess(result));
    } catch (e) {
      emit(FetchrequestsFailure(e.toString()));
    }
  } 
}
