import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_store_app/core/app/app_cubit.dart';
import 'package:grocery_store_app/core/app/connectivity_controller.dart';
import 'package:grocery_store_app/core/app/env.variables.dart';
import 'package:grocery_store_app/core/common/screens/no_network_screen.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/language/app_localizations_setup.dart';
import 'package:grocery_store_app/core/routes/app_routes.dart';
import 'package:grocery_store_app/core/service/shared_pref/pref_keys.dart';
import 'package:grocery_store_app/core/service/shared_pref/shared_pref.dart';
import 'package:grocery_store_app/core/style/theme/app_theme.dart';

class GroceryStoreApp extends StatelessWidget {
  const GroceryStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) =>
            sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(375, 812),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous,current){
                  return previous != current;
                },
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                    title: 'Grocery Store',
                    theme: cubit.isDark? themeLight(): themeDark(),
                    locale: Locale(cubit.currentLangCode),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                    localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: SharedPref().getString(PrefKeys.accessToken) !=null
                        ? SharedPref().getString(PrefKeys.userRole) != 'admin'
                        ? AppRoutes.homeCustomer
                        : AppRoutes.homeAdmin
                        : AppRoutes.login,
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'Grocery Store Network',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
