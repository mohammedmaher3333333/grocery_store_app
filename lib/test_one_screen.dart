import 'package:flutter/material.dart';
import 'package:grocery_store_app/extensions/context_extension.dart';
import 'package:grocery_store_app/routes/app_routes.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("One"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              child: Text(
                "Go to second screen",
                style: TextStyle(color: context.color.mainColor, fontSize: 20),
              ),
              onPressed: () {
                  context.pushName(AppRoutes.testTwo);
                  },
            ),
          ),
          Image.asset(context.assets.testImage ?? ''),
        ],
      ),
    );
  }
}
