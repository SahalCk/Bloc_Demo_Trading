import 'package:flutter/material.dart';
import 'package:tradeapp_demo/model/models.dart';
import 'package:tradeapp_demo/presentation/screens/watchlist_screen.dart';

class Listitem extends StatelessWidget {
  final String category;

  const Listitem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    List<Stock> mylist = [
      Stock(
          stockName: "SENSEX",
          company: 'BSE',
          price: 64718.56,
          percentageHike: "+803.20(1.54%)",
          category: "SENSEX"),
      Stock(
          stockName: "SENSEX",
          company: 'BSE',
          price: 64718.56,
          percentageHike: "+803.20(1.54%)",
          category: "SENSEX"),
      Stock(
          stockName: "SENSEX",
          company: 'BSE',
          price: 64718.56,
          percentageHike: "+803.20(1.54%)",
          category: "SENSEX"),
    ];
    List<Stock> specificlist = category == "mylist" ? [...mylist] : [];
    for (int i = 0; i < WatchListScreen.items.length; i++) {
      if (WatchListScreen.items[i].category == category) {
        specificlist.add(WatchListScreen.items[i]);
      }
    }

    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(specificlist[index].stockName),
            subtitle: Text(specificlist[index].company),
            trailing: Column(
              children: [
                Text(
                  "^ ${specificlist[index].price}".toString(),
                  style: const TextStyle(color: Colors.greenAccent),
                ),
                Text(specificlist[index].percentageHike)
              ],
            ),
          );
        },
        separatorBuilder: (b, i) => const Divider(
              height: 4,
            ),
        itemCount: specificlist.length);
  }
}
