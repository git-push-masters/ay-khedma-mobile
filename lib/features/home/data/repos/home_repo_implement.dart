import 'dart:developer';
import 'package:ay_khedma/features/home/data/models/requests_model/requests_model.dart';

import '../../../../../core/helper/helper_services/api_service.dart';
import '../models/sectionsmodel/sectionsmodel.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<SectionsModel> fetchAllSections() async {
    log("enter method");
    Map<String, dynamic> sectionsData =
        await apiService.get(endPoint: "sections", token: "");
    log(sectionsData.toString());
    return SectionsModel.fromJson(sectionsData);
  }

  @override
  Future<RequestsModel> postRequest({required RequestsModel requestsdata}) {
    throw UnimplementedError();
  }
}
