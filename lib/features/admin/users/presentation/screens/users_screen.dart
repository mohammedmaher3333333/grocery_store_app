import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/common/widgets/admin_app_bar.dart';
import 'package:grocery_store_app/core/style/colors/colors_dark.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'Users',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: Center(
        child: Text(
          'Users Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grocery_store_app/core/di/injection_container.dart';
// import 'package:grocery_store_app/core/style/colors/colors_dark.dart';
// import 'package:grocery_store_app/features/admin/users/presentation/bloc/delete_user/delete_user_bloc.dart';
// import 'package:grocery_store_app/features/admin/users/presentation/bloc/get_all_users/get_all_users_bloc.dart';
// import 'package:grocery_store_app/features/admin/users/presentation/refactors/users_body.dart';
//
// class UsersScreen extends StatelessWidget {
//   const UsersScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => sl<GetAllUsersBloc>()
//             ..add(
//               const GetAllUsersEvent.getAllUsers(isNotLoading: true),
//             ),
//         ),
//         BlocProvider(create: (context) => sl<DeleteUserBloc>()),
//       ],
//       child: const Scaffold(
//         backgroundColor: ColorsDark.mainColor,
//         appBar: AdminAppBar(
//           title: 'Users',
//           isMain: true,
//           backgroundColor: ColorsDark.mainColor,
//         ),
//         body: UsersBody(),
//       ),
//     );
//   }
// }
