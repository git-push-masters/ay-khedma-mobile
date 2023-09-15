import '../models/sectionsmodel/sectionsmodel.dart';

abstract class HomeRepo {
  Future<SectionsModel> fetchAllSections();
}
