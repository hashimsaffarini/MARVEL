import 'package:flutter/material.dart';
import 'package:marvel_app/core/routing/app_router.dart';
import 'package:marvel_app/features/home/ui/home_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
