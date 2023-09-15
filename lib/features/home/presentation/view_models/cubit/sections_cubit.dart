import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/sectionsmodel/sectionsmodel.dart';
import '../../../data/repos/home_repo.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit(this.homeRepo) : super(SectionsInitial());

  final HomeRepo homeRepo;
  SectionsModel? sectionsModel;
  Future<void> fetchSections() async {
    emit(SectionsLoading());
    try {
      var result = await homeRepo.fetchAllSections();
      log(result.toString());
      emit(SectionsSuccess(result));
    } catch (e) {
      emit(SectionsFailure(e.toString()));
    }
  }
}
