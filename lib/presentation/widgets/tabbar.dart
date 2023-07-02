import 'package:flutter/material.dart';
import 'package:tradeapp_demo/presentation/screens/listitems.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(25)),
              child: const Align(
                child: TabBar(
                  labelStyle:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.greenAccent,
                  unselectedLabelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'mylist',
                    ),
                    Tab(text: "Nifty"),
                    Tab(text: "Bank Nifty"),
                    Tab(text: 'Sensex'),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Listitem(category: "mylist"),
                  Listitem(category: "NSE"),
                  Listitem(category: "BSE"),
                  Listitem(category: "SENSEX")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
