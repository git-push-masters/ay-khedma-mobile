import 'dart:developer';

import 'package:ay_khedma/features/home/data/models/sections/sections.dart';

import '../../../../../../core/helper/helper_services/api_service.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<List<SectionsModel>> fetchAllSections() async{
    log("enter method");
    Map<String, dynamic> sectionsData  = await apiService.get(endPoint: "sections", token: "");
    log(sectionsData.toString());
    List<SectionsModel> sections = [];
    for (var element in sectionsData['body']) {
      sections.add(SectionsModel.fromJson(element));
    }
    return sections;
  }


}