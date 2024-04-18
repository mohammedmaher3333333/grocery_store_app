import 'package:flutter/material.dart';
import 'package:grocery_store_app/common/screens/under_build_screen.dart';
import 'package:grocery_store_app/routes/base_routes.dart';
import 'package:grocery_store_app/test_one_screen.dart';
import 'package:grocery_store_app/test_two_screen.dart';

class AppRoutes{
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';

  static Route<void> onGenerateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case testOne:
        return BaseRoute(page: TestOne());
      case testTwo:
        return BaseRoute(page: TestTwo());
      default:
        return BaseRoute(page: PageUnderBuildScreen());
    }
  }
}
