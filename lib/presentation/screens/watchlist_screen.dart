import 'package:flutter/material.dart';

import '../../model/models.dart';
import '../widgets/heading.dart';
import '../widgets/tabbar.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            header(),
            const SizedBox(
              height: 15,
            ),
            const Expanded(child: MyTabBar())
          ],
        ),
      )),
    );
  }

  static List<Stock> items = [
    Stock(
        stockName: "tata motors",
        company: 'NSE',
        price: 1500.07,
        percentageHike: "+27.20(1.54%)",
        category: "NSE"),
    Stock(
        stockName: "HCL",
        company: 'NSE',
        price: 1500.07,
        percentageHike: "+29.20(1.94%)",
        category: "NSE"),
    Stock(
        stockName: "TATA STEEL",
        company: 'NSE',
        price: 1980.07,
        percentageHike: "+12.20(1.54%)",
        category: "NSE"),
    Stock(
        stockName: "ITC",
        company: 'NSE',
        price: 9876.90,
        percentageHike: "+13.20(1.54%)",
        category: "BSE"),
    Stock(
        stockName: "YES BANK",
        company: 'BSE',
        price: 6533.88,
        percentageHike: "+17.20(1.54%)",
        category: "BSE"),
    Stock(
        stockName: "SBI BANK",
        company: 'BSE',
        price: 3535.55,
        percentageHike: "+17.20(1.54%)",
        category: "BSE"),
    Stock(
        stockName: "ICICI",
        company: 'BSE',
        price: 3050.78,
        percentageHike: "+16.20(1.54%)",
        category: "BSE"),
    Stock(
        stockName: "NIFTY BANK",
        company: 'BSE',
        price: 64718.56,
        percentageHike: "+803.20(1.54%)",
        category: "SENSEX"),
    Stock(
        stockName: "NIFTY 50",
        company: 'NSE',
        price: 19189,
        percentageHike: "+17.20(1.14%)",
        category: "SENSEX"),
    Stock(
        stockName: "ITC",
        company: 'TATA',
        price: 305,
        percentageHike: "+17.20(1.54%)",
        category: "NSE"),
    Stock(
        stockName: "ADANI GREEN",
        company: 'ADANI',
        price: 2305,
        percentageHike: "+17.20(1.54%)",
        category: "ADANI"),
    Stock(
        stockName: "JIO",
        company: 'RELIANCE',
        price: 505,
        percentageHike: "+17.20(1.54%)",
        category: "RELIANCE"),
    Stock(
        stockName: "GREEN ENERGY",
        company: 'RELIANCE',
        price: 879,
        percentageHike: "+19.20(1.54%)",
        category: "RELIANCE"),
  ];
}
