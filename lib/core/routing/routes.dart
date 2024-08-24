import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/di/dependency_injection.dart';
import 'package:marvel_app/core/routing/app_router.dart';
import 'package:marvel_app/features/home/logic/cubit/home_cubit.dart';
import 'package:marvel_app/features/home/ui/home_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getAllCharacters(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
