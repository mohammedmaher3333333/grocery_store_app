// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class AddNotificationItem extends StatelessWidget {
//   const AddNotificationItem({
//     required this.notificationModel,
//     required this.index,
//     super.key,
//   });
//
//   final AddNotificationModel notificationModel;
//   final int index;
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomContainerLinearAdmin(
//       height: 180.h,
//       width: MediaQuery.of(context).size.width,
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
//         child: Column(
//           children: [
//             const Spacer(),
//             //Title
//             NotificationInfo(
//               title: 'Tilte: ',
//               body: notificationModel.title,
//             ),
//             const Spacer(),
//             //Body
//             NotificationInfo(
//               title: 'Body: ',
//               body: notificationModel.body,
//             ),
//             const Spacer(),
//             NotificationInfo(
//               title: 'Create At: ',
//               body: notificationModel.createAt.getFormatDayMonthYear(),
//             ),
//             const Spacer(),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 //delete notification
//                 DeleteNotificationWidget(
//                   notificationModel: notificationModel,
//                 ),
//                 SizedBox(width: 40.w),
//                 //Edit notification
//                 EditNotification(
//                   notificationModel: notificationModel,
//                 ),
//                 SizedBox(width: 40.w),
//                 //send notification
//                 SendNotificationWidget(
//                   notificationModel: notificationModel,
//                   index: index,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class NotificationInfo extends StatelessWidget {
//   const NotificationInfo({
//     required this.title,
//     required this.body,
//     super.key,
//   });
//
//   final String title;
//   final String body;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         TextApp(
//           text: title,
//           theme: context.textStyle.copyWith(
//             fontSize: 14.sp,
//             color: Colors.white,
//             fontFamily: FontFamilyHelper.poppinsEnglish,
//             fontWeight: FontWeightHelper.medium,
//           ),
//         ),
//         SizedBox(height: 8.w),
//         Flexible(
//           child: TextApp(
//             text: body,
//             theme: context.textStyle.copyWith(
//               fontSize: 14.sp,
//               color: ColorsDark.blueLight,
//               fontFamily: FontFamilyHelper.poppinsEnglish,
//               fontWeight: FontWeightHelper.medium,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
