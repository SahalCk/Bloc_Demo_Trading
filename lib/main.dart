import 'package:flutter/material.dart';
import 'package:tradeapp_demo/presentation/routes/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
      //  home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
