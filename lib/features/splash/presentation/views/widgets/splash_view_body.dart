// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/assets.dart';
import 'package:fruits_market/features/on_baording/presentation/views/on_boarding.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToOnBoarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesTopLeftShape)],
        ),
        SvgPicture.asset(Assets.imagesCenterLogo),

        SvgPicture.asset(Assets.imagesBottomShape, fit: BoxFit.fill),
      ],
    );
  }

  void navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingView()),
        (route) => false,
      );
    });
  }
}
