part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class UpdatedSearchList extends SearchState {
  final List<Stock> updatedList;

  UpdatedSearchList({required this.updatedList});
}
