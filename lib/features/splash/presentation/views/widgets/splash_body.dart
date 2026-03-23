// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fruits_market/constants.dart';
import 'package:fruits_market/core/services/shared_preferences.dart';
import 'package:fruits_market/core/utils/assets.dart';
import 'package:fruits_market/features/auth/presentation/views/login/login.dart';
import 'package:fruits_market/features/on_baording/presentation/views/on_boarding.dart';
import 'package:svg_flutter/svg.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              Localizations.localeOf(context).languageCode == 'ar'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesTopLeftShape)],
        ),
        SvgPicture.asset(Assets.imagesCenterLogo),

        SvgPicture.asset(Assets.imagesBottomShape, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNaviagtion() {
    bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingViewSeen) {
        Navigator.pushReplacementNamed(context, Login.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoarding.routeName);
      }
    });
  }
}
