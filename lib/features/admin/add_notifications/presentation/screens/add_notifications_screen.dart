import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/common/widgets/admin_app_bar.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/style/colors/colors_dark.dart';
import 'package:grocery_store_app/features/admin/add_notifications/presentation/bloc/add_notification/add_notification_bloc.dart';
import 'package:grocery_store_app/features/admin/add_notifications/presentation/bloc/get_all_notification_admin/get_all_notification_admin_bloc.dart';
import 'package:grocery_store_app/features/admin/add_notifications/presentation/bloc/send_notification/send_notification_bloc.dart';
import 'package:grocery_store_app/features/admin/add_notifications/presentation/refactors/add_notification_body.dart';

class AddNotificationsScreen extends StatelessWidget {
  const AddNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetAllNotificationAdminBloc>()
            ..add(
              const GetAllNotificationAdminEvent.getAllNotificion(),
            ),
        ),
        BlocProvider(create: (context) => sl<AddNotificationBloc>()),
        BlocProvider(create: (context) => sl<SendNotificationBloc>()),


      ],
      child: const Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
          title: 'Notifications',
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
        ),
        body: AddNotificationBody(),
      ),
    );
  }
}
