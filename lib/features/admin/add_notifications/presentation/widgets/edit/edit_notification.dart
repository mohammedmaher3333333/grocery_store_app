// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class EditNotification extends StatelessWidget {
//   const EditNotification({required this.notificationModel, super.key});
//
//   final AddNotificationModel notificationModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         CustomBottomSheet.showModalBottomSheetContainer(
//           context: context,
//           widget: EditNotificationBottomSheet(
//             notificationModel: notificationModel,
//           ),
//           whenComplete: () {
//             context.read<GetAllNotificationAdminBloc>().add(
//                   const GetAllNotificationAdminEvent.getAllNotificion(),
//                 );
//           },
//         );
//       },
//       child: const Icon(
//         Icons.edit,
//         color: Colors.yellow,
//       ),
//     );
//   }
// }
