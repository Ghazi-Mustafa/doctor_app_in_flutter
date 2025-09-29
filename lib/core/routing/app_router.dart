import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import './routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) =>  OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
