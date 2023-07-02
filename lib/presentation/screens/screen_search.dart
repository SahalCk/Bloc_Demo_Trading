import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradeapp_demo/Business_logic/search_bloc/search_bloc.dart';
import 'package:tradeapp_demo/presentation/screens/watchlist_screen.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final List<dynamic> searchlist = [...WatchListScreen.items];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ],
                title: TextField(
                  textAlign: TextAlign.start,
                  onChanged: (value) {
                    context
                        .read<SearchBloc>()
                        .add(OnChangedSearchingEvent(searchedQuery: value));
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: 'Search Here', border: InputBorder.none),
                )),
            body: state is UpdatedSearchList
                ? ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(state.updatedList[index].stockName),
                        subtitle: Text(state.updatedList[index].company),
                        trailing: Column(
                          children: [
                            Text(
                              "^ ${state.updatedList[index].price}".toString(),
                              style: const TextStyle(color: Colors.greenAccent),
                            ),
                            Text(state.updatedList[index].percentageHike)
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (b, i) => const Divider(
                          height: 4,
                        ),
                    itemCount: state.updatedList.length)
                : ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(WatchListScreen.items[index].stockName),
                        subtitle: Text(WatchListScreen.items[index].company),
                        trailing: Column(
                          children: [
                            Text(
                              "^ ${WatchListScreen.items[index].price}"
                                  .toString(),
                              style: const TextStyle(color: Colors.greenAccent),
                            ),
                            Text(WatchListScreen.items[index].percentageHike)
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (b, i) => const Divider(
                          height: 4,
                        ),
                    itemCount: WatchListScreen.items.length));
      },
    );
  }
}
