import 'package:flutter/material.dart';
import 'package:now_tv_v1/onboarding/onboarding_screen.dart';
import 'package:now_tv_v1/splash/splash_screen.dart';

class NowTvRoutes {
  static const String initialRoute = '/initialRoute';
  static const String splashScreen = '/splash';
  static const String onboardingScreen = '/onboarding';
  static const String mainScreen = '/main';
  static const String homeScreen = '/home';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: (context) => const SplashScreen(),
        splashScreen: (context) => const SplashScreen(),
        onboardingScreen: (context) => OnboardingScreen(),
        //mainScreen: (context) => const MainScreen(),
        //homeScreen: (context) => const HomeScreen(),
      };
}
