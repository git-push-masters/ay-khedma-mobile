import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/data/models/requests_model/requests_model.dart';
import '../../features/home/data/models/sectionsmodel/sectionsmodel.dart';
import '../../features/user_authentication/data/models/user_model/user_model.dart';
import '../../features/user_authentication/presentation/views/sign_in_view.dart';
import 'helper_services/api_service.dart';

String? token;
UserModel? myUserModel;
SectionsModel? mySectionsModel;
RequestsModel? requestsModel;
String? selectedSection;
const baseUrl = "https://ay-khedma-backend-development.up.railway.app/api/";

Future<UserModel> myUserData({required String token}) async {
  try {
    Map<String, dynamic> data =
        await ApiService().get(endPoint: "auth/me", token: token);
    log(token.toString());
    log(data.toString());
    return UserModel.fromJson(data);
  } catch (e) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
    log("tokenDeleted : $token");
    Get.to(() => const SignInView());
    throw Exception(e.toString());
  }
}
