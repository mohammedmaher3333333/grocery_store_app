import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_store_app/core/app/connectivity_controller.dart';
import 'package:grocery_store_app/core/app/env.variables.dart';
import 'package:grocery_store_app/core/common/screens/no_network_screen.dart';
import 'package:grocery_store_app/core/language/app_localizations_setup.dart';
import 'package:grocery_store_app/core/routes/app_routes.dart';
import 'package:grocery_store_app/core/style/theme/app_theme.dart';


class GroceryStoreApp extends StatelessWidget {
  const GroceryStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              title: 'Grocery Store',
              theme: themeLight(),

              locale: Locale("en"),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
              localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,

              builder: (context, widget) {
                return GestureDetector(
                  onTap: (){FocusManager.instance.primaryFocus?.unfocus();
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
              initialRoute: AppRoutes.login,
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


