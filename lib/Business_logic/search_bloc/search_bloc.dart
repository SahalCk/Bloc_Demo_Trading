import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:tradeapp_demo/model/models.dart';
import 'package:tradeapp_demo/presentation/screens/watchlist_screen.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<OnChangedSearchingEvent>(onChangedSearchingEvent);
  }

  FutureOr<void> onChangedSearchingEvent(
      OnChangedSearchingEvent event, Emitter<SearchState> emit) {
    List<Stock> finalList = [];
    for (var elemet in WatchListScreen.items) {
      if (elemet.stockName.toLowerCase().contains(event.searchedQuery)) {
        finalList.add(elemet);
      }
    }
    emit(UpdatedSearchList(updatedList: finalList));
  }
}
