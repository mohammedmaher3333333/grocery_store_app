import 'package:flutter/material.dart';

class CatgeoriesScreen extends StatelessWidget {
  const CatgeoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Categories Screen',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}


//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grocery_store_app/core/di/injection_container.dart';
// import 'package:grocery_store_app/features/customer/category/persentation/bloc/get_category/get_category_bloc.dart';
// import 'package:grocery_store_app/features/customer/category/persentation/refactors/category_body.dart';
//
// class CatgeoryScreen extends StatelessWidget {
//   const CatgeoryScreen({required this.categoryInfo, super.key});
//
//   final ({String categoryName, int categoryId}) categoryInfo;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => sl<GetCategoryBloc>()
//         ..add(
//           GetCategoryEvent.getCategory(categoryId: categoryInfo.categoryId),
//         ),
//       child: Scaffold(
//         appBar: CustomAppBar(title: categoryInfo.categoryName),
//         body: const CategoryBody(),
//       ),
//     );
//   }
// }
