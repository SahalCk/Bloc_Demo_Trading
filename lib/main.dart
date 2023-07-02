import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tradeapp_demo/Business_logic/Landing_bloc/landing_page_bloc.dart';
import 'package:tradeapp_demo/Business_logic/search_bloc/search_bloc.dart';
import 'package:tradeapp_demo/presentation/routes/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SearchBloc()),
        BlocProvider(create: (context) => LandingPageBloc())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,

        theme: ThemeData.dark(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator().generateRoute,
        //  home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
