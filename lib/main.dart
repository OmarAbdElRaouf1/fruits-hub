import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_market/core/helper_functions/on_generate_route.dart';
import 'package:fruits_market/core/services/shared_preferences.dart';
import 'package:fruits_market/features/splash/presentation/views/splash.dart';
import 'package:fruits_market/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const FruitsMarketApp());
}

class FruitsMarketApp extends StatelessWidget {
  const FruitsMarketApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Cairo'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: Locale('ar'),
        debugShowCheckedModeBanner: false,
        title: 'Fruits Market',
        onGenerateRoute: onGenerateRoute,
        initialRoute: Splash.routeName,
      ),
    );
  }
}
