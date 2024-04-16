import 'package:flutter/material.dart';
class GroceryStoreApp extends StatelessWidget {
  const GroceryStoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("GroceryStore"),
        ),
      ),
    );
  }
}
