// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grocery_store_app/core/common/widgets/text_app.dart';
// import 'package:grocery_store_app/core/extensions/context_extension.dart';
// import 'package:grocery_store_app/core/style/fonts/font_family_helper.dart';
// import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';
//
// class CreateNotification extends StatelessWidget {
//   const CreateNotification({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         // titile
//         TextApp(
//           text: 'Notifications',
//           theme: context.textStyle.copyWith(
//             fontSize: 18.sp,
//             fontWeight: FontWeightHelper.medium,
//             fontFamily: FontFamilyHelper.poppinsEnglish,
//           ),
//         ),
//         // bottom sheet
//         CustomButton(
//           onPressed: () {
//             CustomBottomSheet.showModalBottomSheetContainer(
//               context: context,
//               widget: BlocProvider(
//                 create: (context) => sl<AddNotificationBloc>(),
//                 child: const CreateNotificationBottomSheet(),
//               ),
//               whenComplete: () {
//                 context.read<GetAllNotificationAdminBloc>().add(
//                       const GetAllNotificationAdminEvent.getAllNotificion(),
//                     );
//               },
//             );
//           },
//           backgroundColor: ColorsDark.blueDark,
//           lastRadius: 10,
//           threeRadius: 10,
//           text: 'Add',
//           width: 90.w,
//           height: 35.h,
//         ),
//       ],
//     );
//   }
// }
