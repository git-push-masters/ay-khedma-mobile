part of 'sections_cubit.dart';

abstract class SectionsState extends Equatable {
  const SectionsState();

  @override
  List<Object> get props => [];
}

class SectionsInitial extends SectionsState {}

class SectionsLoading extends SectionsState {}

class SectionsSuccess extends SectionsState {
  final SectionsModel sections;

  const SectionsSuccess(this.sections);
}

class SectionsFailure extends SectionsState {
  final String errMessage;

  const SectionsFailure(this.errMessage);
}
