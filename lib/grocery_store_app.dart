import 'package:flutter/material.dart';
import 'package:grocery_store_app/common/screens/no_network_screen.dart';
import 'package:grocery_store_app/core/app/connectivity_controller.dart';
import 'package:grocery_store_app/core/app/env.variables.dart';

class GroceryStoreApp extends StatelessWidget {
  const GroceryStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'Grocery Store',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  },
                ),
              );
            },
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text("GroceryStore"),
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
