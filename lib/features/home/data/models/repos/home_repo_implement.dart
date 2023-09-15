import 'dart:convert';
import 'dart:developer';
import 'package:ay_khedma/features/home/data/models/requests_model/requests_model.dart';

import '../../../../../core/helper/helper_services/api_service.dart';
import '../sectionsmodel/sectionsmodel.dart';
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
  Future<RequestsModel> postRequest(
      {required String title,
      required String description,
      required int maxPrice,
      required String durationRange,
      required int sectionId,
      required String token}) async {
    log("enter method");
    Map<String, dynamic> body = {
      "title": title,
      "description": description,
      "maxPrice": maxPrice,
      "sectionId": sectionId,
      "durationRange": durationRange,
    };
    String data = jsonEncode(body);
    Map<String, dynamic> requestData =
        await apiService.post(endPoint: "requests", body: data, token: token);
    return RequestsModel.fromJson(requestData);
  }
}
