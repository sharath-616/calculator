import 'package:calculator/Provider/calculator_provider.dart';
import 'package:calculator/Screen/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CalculatorProvider(),
        )
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: HomePage.classId,
  routes: [
    GoRoute(
      path: HomePage.classId,
      builder: (context, state) => const HomePage(),
    )
  ],
);
