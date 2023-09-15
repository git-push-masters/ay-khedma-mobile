import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/requests_model/requests_model.dart';

part 'request_state.dart';

class RequestCubit extends Cubit<RequestState> {
  RequestCubit() : super(RequestInitial());
}
