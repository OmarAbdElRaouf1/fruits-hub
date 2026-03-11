import 'package:flutter/material.dart';
import 'package:fruits_market/features/on_baording/presentation/views/on_boarding.dart';
import 'package:fruits_market/features/splash/presentation/views/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return null;
  }
}
