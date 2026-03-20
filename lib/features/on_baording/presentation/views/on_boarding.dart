import 'package:flutter/material.dart';
import 'package:fruits_market/features/on_baording/presentation/views/widgets/on_boarding_body.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static const String routeName = '/on-boarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnBoardingBody()));
  }
}
