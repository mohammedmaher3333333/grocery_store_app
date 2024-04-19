import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/language/lang_keys.dart';
import 'package:grocery_store_app/core/routes/app_routes.dart';

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
          Text(
            context.translate(LangKeys.appName),
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          //Image.asset(context.assets.testImage ?? ''),
        ],
      ),
    );
  }
}
