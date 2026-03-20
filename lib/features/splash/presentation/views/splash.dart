import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/presentation/views/widgets/splash_body.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody());
  }
}
