import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/features/login/ui/screens/login_screen.dart';
import 'package:advanced_project/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("no route defined fot ${settings.name}")),
          ),
        );
    }
  }
}
