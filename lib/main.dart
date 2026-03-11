import 'package:flutter/material.dart';
import 'package:fruits_market/core/helper_functions/on_generate_route.dart';
import 'package:fruits_market/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsMarketApp());
}

class FruitsMarketApp extends StatelessWidget {
  const FruitsMarketApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruits Market',
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
