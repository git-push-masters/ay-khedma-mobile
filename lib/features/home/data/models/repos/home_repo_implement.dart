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
      required String token,
      required String address}) async {
    log("enter request");
    Map<String, dynamic> body = {
      "title": title,
      "description": description,
      "maxPrice": maxPrice,
      "sectionId": sectionId,
      "durationRange": durationRange,
      "address" : address,
      "locationLat": 32.32421,
      "locationLong": 32.134539,
    };
    String data = jsonEncode(body);
    Map<String, dynamic> requestData =
        await apiService.post(endPoint: "requests", body: data, token: token);
    log(requestData.toString());
    return RequestsModel.fromJson(requestData);
  }

  @override
  Future<List<RequestsModel>> fetchAllRequests({required String token}) async {
    log("enter method");
    Map<String, dynamic> requestsData =
        await apiService.get(endPoint: "requests", token: token);
    log(requestsData.toString());
    List<RequestsModel> requestsList = [];
    for (var element in requestsData['body']) {
      requestsList.add( RequestsModel.fromJson(element));
    }
     return requestsList;
  }
}
