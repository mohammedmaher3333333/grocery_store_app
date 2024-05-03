// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grocery_store_app/core/di/injection_container.dart';
//
// class ProductAdminItem extends StatelessWidget {
//   const ProductAdminItem({
//     required this.imageUrl,
//     required this.title,
//     required this.categoryName,
//     required this.price,
//     required this.productId,
//     required this.imageList,
//     required this.description,
//     required this.categoryId,
//     super.key,
//   });
//
//   final String imageUrl;
//   final String title;
//   final String categoryName;
//   final String description;
//   final String price;
//   final String productId;
//   final String categoryId;
//   final List<String> imageList;
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomContainerLinearAdmin(
//       height: 250.h,
//       width: 165.w,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //Buttons
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               //Delete Button
//               DeleteProductWidget(
//                 productId: productId,
//               ),
//               //Update Button
//               IconButton(
//                 onPressed: () {
//                   CustomBottomSheet.showModalBottomSheetContainer(
//                     context: context,
//                     widget: MultiBlocProvider(
//                       providers: [
//                         BlocProvider(
//                           create: (context) => sl<UpdateProductBloc>(),
//                         ),
//                         BlocProvider(
//                           create: (context) => sl<UploadImageCubit>(),
//                         ),
//                         BlocProvider(
//                           create: (context) => sl<GetAllAdminCategoriesBloc>()
//                             ..add(
//                               const GetAllAdminCategoriesEvent
//                                   .fetchAdminCategories(
//                                 isNotLoading: false,
//                               ),
//                             ),
//                         ),
//                       ],
//                       child: UpdateProductBottomSheet(
//                         imageList: imageList,
//                         categoryName: categoryName,
//                         description: description,
//                         price: price,
//                         productId: productId,
//                         title: title,
//                         categoryId: categoryId,
//                       ),
//                     ),
//                     whenComplete: () {
//                       context.read<GetAllAdminProductBloc>().add(
//                             const GetAllAdminProductEvent.getAllProducts(
//                                 isNotLoading: false),
//                           );
//                     },
//                   );
//                 },
//                 padding: EdgeInsets.zero,
//                 icon: const Icon(
//                   Icons.edit,
//                   color: Colors.green,
//                 ),
//               ),
//             ],
//           ),
//           // Show Image
//           Flexible(
//             child: Center(
//               child: CachedNetworkImage(
//                 height: 200.h,
//                 width: 120.w,
//                 imageUrl: imageUrl.imageProductFormate(),
//                 errorWidget: (context, url, error) => const Icon(
//                   Icons.error,
//                   color: Colors.red,
//                   size: 70,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//           // title
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: TextApp(
//               text: title,
//               theme: context.textStyle.copyWith(
//                 fontSize: 14.sp,
//                 fontWeight: FontWeightHelper.bold,
//                 fontFamily: FontFamilyHelper.poppinsEnglish,
//               ),
//               maxLines: 1,
//             ),
//           ),
//           SizedBox(height: 5.h),
//           // Category Name
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: TextApp(
//               text: categoryName,
//               theme: context.textStyle.copyWith(
//                 fontSize: 13.sp,
//                 fontWeight: FontWeightHelper.medium,
//               ),
//               maxLines: 1,
//             ),
//           ),
//           SizedBox(height: 5.h),
//           // Price
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: TextApp(
//               text: '\$ $price',
//               theme: context.textStyle.copyWith(
//                 fontSize: 13.sp,
//                 fontWeight: FontWeightHelper.medium,
//               ),
//             ),
//           ),
//           SizedBox(height: 10.h),
//         ],
//       ),
//     );
//   }
// }
