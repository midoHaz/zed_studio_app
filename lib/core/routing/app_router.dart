
import 'package:flutter/material.dart';
import 'package:zed_studio_app/core/routing/routes.dart';
import 'package:zed_studio_app/features/login/ui/login_screen.dart';
import 'package:zed_studio_app/features/onboarding/onboarding_screen.dart';
import 'package:zed_studio_app/features/signup/ui/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined For ${settings.name}"),
            ),
          ),
        );
    }
  }
}
