import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/common/widgets/admin_app_bar.dart';
import 'package:grocery_store_app/core/style/colors/colors_dark.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'AddCategoriesScreen',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: Center(
        child: Text(
          'AddCategories Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grocery_store_app/core/di/injection_container.dart';
// import 'package:grocery_store_app/features/admin/add_categories/presentation/bloc/delete_category/delete_category_bloc.dart';
// import 'package:grocery_store_app/features/admin/add_categories/presentation/bloc/get_all_admin_categories/get_all_admin_categories_bloc.dart';
// import 'package:grocery_store_app/features/admin/add_categories/presentation/refactors/add_categories_body.dart';
//
// import '../../../../../core/style/colors/colors_dark.dart';
//
// class AddCategoriesScreen extends StatelessWidget {
//   const AddCategoriesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => sl<GetAllAdminCategoriesBloc>()
//             ..add(
//               const GetAllAdminCategoriesEvent.fetchAdminCategories(
//                 isNotLoading: true,
//               ),
//             ),
//         ),
//         BlocProvider(
//           create: (context) => sl<DeleteCategoryBloc>(),
//         ),
//       ],
//       child: const Scaffold(
//         backgroundColor: ColorsDark.mainColor,
//         appBar: AdminAppBar(
//           title: 'Categories',
//           isMain: true,
//           backgroundColor: ColorsDark.mainColor,
//         ),
//         body: AddCategoriesBody(),
//       ),
//     );
//   }
// }
