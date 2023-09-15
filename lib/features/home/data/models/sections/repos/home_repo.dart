import '../sections.dart';

abstract class HomeRepo
{
  Future <List<SectionsModel>> fetchAllSections();
}