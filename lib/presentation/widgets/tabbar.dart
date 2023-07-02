import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeapp_demo/presentation/screens/listitems.dart';
import 'package:tradeapp_demo/presentation/screens/screen_search.dart';

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
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  const TabBar(
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
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: CupertinoTextField.borderless(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        )),
                        prefix: const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.search),
                          ],
                        ),
                        suffix: Row(
                          children: [
                            Icon(
                              Icons.grid_on_rounded,
                              color: Colors.green[700],
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.settings_input_composite_outlined,
                              color: Colors.green[700],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        placeholder: 'Search & Add',
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 46, 46, 46)
                                .withOpacity(0.4),
                            borderRadius: BorderRadius.circular(8)),
                        // decoration: InputDecoration(
                        //     enabledBorder: InputBorder.none,
                        //     contentPadding: const EdgeInsets.only(top: 5),
                        //     filled: true,
                        //     fillColor: const Color.fromARGB(255, 46, 46, 46)
                        //         .withOpacity(0.4),
                        //     prefixIcon: const Icon(Icons.search),
                        //     hintText: 'Search & Add',
                        //     suffixIcon: const Icon(
                        //       Icons.settings,
                        //       color: Colors.green,
                        //     ),
                        //     border: const OutlineInputBorder(),
                        //     focusColor: Colors.white,
                        //     prefixIconColor: Colors.white),
                      ),
                    ),
                  )
                ],
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
