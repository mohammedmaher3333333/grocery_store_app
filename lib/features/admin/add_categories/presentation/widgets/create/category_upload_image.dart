import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryUploadImage extends StatelessWidget {
  const CategoryUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://images.unsplash.com/photo-1682695799561-033f55f75b25?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grocery_store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
// import 'package:grocery_store_app/core/common/toast/show_toast.dart';
// import 'package:grocery_store_app/core/extensions/context_extension.dart';
// import 'package:grocery_store_app/core/language/lang_keys.dart';
//
// class CategoryUploadImage extends StatelessWidget {
//   const CategoryUploadImage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<UploadImageCubit, UploadImageState>(
//       listener: (context, state) {
//         state.whenOrNull(
//           success: () {
//             ShowToast.showToastSuccessTop(
//               message: context.translate(LangKeys.imageUploaded),
//             );
//           },
//           removeImage: (removeImage) {
//             ShowToast.showToastSuccessTop(
//               message: context.translate(LangKeys.imageRemoved),
//             );
//           },
//           error: (errorMessage) {
//             ShowToast.showToastErrorTop(
//               message: errorMessage,
//             );
//           },
//         );
//       },
//       builder: (context, state) {
//         final cubit = context.read<UploadImageCubit>();
//         return state.maybeWhen(
//           loading: () {
//             return Container(
//               height: 120.h,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: Colors.grey.withOpacity(0.8),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: const Center(
//                 child: CircularProgressIndicator(
//                   color: Colors.white,
//                 ),
//               ),
//             );
//           },
//           orElse: () {
//             if (cubit.getImageUrl.isNotEmpty) {
//               return Container(
//                 height: 120.h,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.grey.withOpacity(0.8),
//                   borderRadius: BorderRadius.circular(15),
//                   image: DecorationImage(
//                     image: NetworkImage(cubit.getImageUrl),
//                     // fit: BoxFit.fill,
//                   ),
//                 ),
//               );
//             } else {
//               return InkWell(
//                 onTap: () {
//                   context.read<UploadImageCubit>().uploadImage();
//                 },
//                 child: Container(
//                   height: 120.h,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.withOpacity(0.8),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: const Icon(
//                     Icons.add_a_photo_outlined,
//                     size: 50,
//                     color: Colors.white,
//                   ),
//                 ),
//               );
//             }
//           },
//         );
//       },
//     );
//   }
// }
