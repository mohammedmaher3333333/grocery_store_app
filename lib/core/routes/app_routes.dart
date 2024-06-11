import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:grocery_store_app/core/common/screens/custom_web_view.dart';
import 'package:grocery_store_app/core/common/screens/under_build_screen.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/routes/base_routes.dart';
import 'package:grocery_store_app/features/admin/home_admin/presentation/screens/home_admin_screen.dart';
import 'package:grocery_store_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:grocery_store_app/features/auth/presentation/screens/login_screen.dart';
import 'package:grocery_store_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:grocery_store_app/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:grocery_store_app/features/customer/main/presentation/screen/main_screen.dart';
class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String homeAdmin = 'homeAdmin';
  static const String mainCustomer  = 'main-screen';
  static const String webview = 'webView';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<AuthBloc>(),
            child: const LoginScreen(),
          ),
        );
      case signUp:
        return BaseRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<UploadImageCubit>(),
              ),
              BlocProvider(
                create: (context) => sl<AuthBloc>(),
              ),
            ],
            child: const SignUpScreen(),
          ),
        );
      case homeAdmin:
        return BaseRoute(page: const HomeAdminScreen());
      case mainCustomer:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => sl<MainCubit>(),
            child: const MainScreen(),
          ),
        );
      case webview:
        return BaseRoute(
          page: CustomWebView(
            url: args! as String,
          ),
        );
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
