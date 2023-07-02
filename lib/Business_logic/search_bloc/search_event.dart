part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class OnChangedSearchingEvent extends SearchEvent {
  final String searchedQuery;
  OnChangedSearchingEvent({required this.searchedQuery});
}
