import 'dart:developer';

import 'package:ay_khedma/features/user_authentication/data/repos/user_auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/sections/repos/home_repo.dart';
import '../../../data/models/sections/sections.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit(this.homeRepo) : super(SectionsInitial());

 final HomeRepo homeRepo;

 Future <void> fetchSections()async
 {
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
