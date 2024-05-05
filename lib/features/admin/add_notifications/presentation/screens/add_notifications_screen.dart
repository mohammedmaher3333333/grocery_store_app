import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/common/widgets/admin_app_bar.dart';
import 'package:grocery_store_app/core/style/colors/colors_dark.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Notifications',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: Center(
        child: Text(
          'Notifications Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
