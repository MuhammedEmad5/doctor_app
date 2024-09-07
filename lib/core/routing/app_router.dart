import 'package:doctor_app/core/routing/routs.dart';
import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  static Route routeGenerate(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_)=>const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_)=>const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_)=>const Scaffold(
          body: Center(child: Text('no route found')),
        ));
    }
  }
}