import '../models/requests_model/requests_model.dart';
import '../models/sectionsmodel/sectionsmodel.dart';

abstract class HomeRepo {
  Future<SectionsModel> fetchAllSections();
  Future <RequestsModel> postRequest({required RequestsModel requestsdata});
}
