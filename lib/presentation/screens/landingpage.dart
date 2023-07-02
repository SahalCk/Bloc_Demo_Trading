import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradeapp_demo/presentation/screens/watchlist_screen.dart';

import '../../Business_logic/Landing_bloc/landing_page_bloc.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.bookmark_border_rounded),
    label: 'Wacthlist',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_bag_outlined),
    label: 'Orders',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.gif_box_outlined),
    label: 'portfolio',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.waterfall_chart),
    label: 'Movers',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.more_horiz),
    label: 'More',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  WatchListScreen(),
  Text('orders'),
  Text('portfolio'),
  Text('Movers'),
  Text('More'),
];

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<LandingPageBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
