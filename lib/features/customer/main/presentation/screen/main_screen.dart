import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/enums/nav_bar_enum.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/features/customer/favorites/presentation/screen/favorites_screen.dart';
import 'package:grocery_store_app/features/customer/home/presentation/screen/home_screen.dart';
import 'package:grocery_store_app/features/customer/main/presentation/cubit/main_cubit.dart';
import 'package:grocery_store_app/features/customer/main/presentation/refactors/bottom_nav_bar.dart';
import 'package:grocery_store_app/features/customer/main/presentation/refactors/main_customer_app_bar.dart';
import 'package:grocery_store_app/features/customer/notifications/persentation/screens/notification_screen.dart';
import 'package:grocery_store_app/features/customer/profile/presentation/screen/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MainCubit>(),
      child: Scaffold(
        appBar: const MainCustomerAppBar(),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(context.assets.homeBg!),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<MainCubit, MainState>(
                  builder: (context, state) {
                    final cubit = context.read<MainCubit>();
                    if (cubit.navBarEnum == NavBarEnum.notifications) {
                      return const NotificationScreen();
                    } else if (cubit.navBarEnum == NavBarEnum.favorites) {
                      return const FavoritesScreen();
                    } else if (cubit.navBarEnum == NavBarEnum.profile) {
                      return const ProfileScreen();
                    }
                    return const HomeScreen();
                  },
                ),
              ),
              const MainBottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
