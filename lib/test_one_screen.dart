import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/routes/app_routes.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("One"),
      ),
      body: Center(
        child: TextButton(
          child: Text(
            "Go to second screen",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
              context.pushName(AppRoutes.testTwo);
              },
        ),
      ),
    );
  }
}
