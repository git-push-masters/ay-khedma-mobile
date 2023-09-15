import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/repos/home_repo.dart';
import '../../../data/models/requests_model/requests_model.dart';

part 'request_state.dart';

class RequestCubit extends Cubit<RequestState> {
  RequestCubit(this.homeRepo) : super(RequestInitial());

  final HomeRepo homeRepo;

  Future<void> postRequest(
      {required String title,
      required String description,
      required int maxPrice,
      required String durationRange,
      required int sectionId,
      required String token}) async {
        emit(RequestLoading());
    try {
      var result = await homeRepo.postRequest(
        title: title,
        description: description,
        maxPrice: maxPrice,
        durationRange: durationRange,
        sectionId: sectionId,
        token: token);
        emit(RequestSuccess(result));
    } catch (e) {
      emit(RequestFailure(e.toString()));
      log(e.toString());
    }
        
  }
}
