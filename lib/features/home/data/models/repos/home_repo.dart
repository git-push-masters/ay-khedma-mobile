import '../requests_model/requests_model.dart';
import '../sectionsmodel/sectionsmodel.dart';

abstract class HomeRepo {
  Future<SectionsModel> fetchAllSections();

  Future<RequestsModel> postRequest(
      {required String title,
      required String description,
      required int maxPrice,
      required String durationRange,
      required int sectionId,
      required String token,
      required String address});

  Future<List<RequestsModel>> fetchAllRequests({required String token});
}
