import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/common/widgets/admin_app_bar.dart';
import 'package:grocery_store_app/core/style/colors/colors_dark.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        title: 'AddProductsScreen',
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
      ),
      body: Center(
        child: Text(
          'AddProducts Screen',
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
//
// class AddProductsScreen extends StatelessWidget {
//   const AddProductsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => sl<GetAllAdminProductBloc>()
//             ..add(
//               const GetAllAdminProductEvent.getAllProducts(isNotLoading: true),
//             ),
//         ),
//         BlocProvider(create: (context) => sl<DeleteProductBloc>()),
//       ],
//       child: const Scaffold(
//         backgroundColor: ColorsDark.mainColor,
//         appBar: AdminAppBar(
//           title: 'Products',
//           isMain: true,
//           backgroundColor: ColorsDark.mainColor,
//         ),
//         body: AddProductsBody(),
//       ),
//     );
//   }
// }
