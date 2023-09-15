
import '../../features/home/data/models/requests_model/requests_model.dart';
import '../../features/home/data/models/sectionsmodel/sectionsmodel.dart';
import '../../features/user_authentication/data/models/user_model/user_model.dart';

String? token;
UserModel? myUserModel;
SectionsModel? mySectionsModel;
RequestsModel? requestsModel; 
String? selectedSection;
const baseUrl = "https://ay-khedma-backend-development.up.railway.app/api/";
