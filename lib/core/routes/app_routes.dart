import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/common/screens/under_build_screen.dart';
import 'package:grocery_store_app/core/routes/base_routes.dart';
import 'package:grocery_store_app/features/auth/presentation/screens/login_screen.dart';


class AppRoutes{
  static const String login = 'login';
  static Route<void> onGenerateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case login:
        return BaseRoute(page: const LoginScreen());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
