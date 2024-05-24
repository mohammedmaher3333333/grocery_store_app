import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_store_app/core/common/bottom_shet/custom_bottom_sheet.dart';
import 'package:grocery_store_app/core/common/widgets/custom_button.dart';
import 'package:grocery_store_app/core/common/widgets/text_app.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/style/colors/colors_dark.dart';
import 'package:grocery_store_app/core/style/fonts/font_family_helper.dart';
import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';
import 'package:grocery_store_app/features/admin/add_notifications/presentation/bloc/add_notification/add_notification_bloc.dart';
import 'package:grocery_store_app/features/admin/add_notifications/presentation/widgets/create/create_notification_bottom_sheet.dart';

class CreateNotification extends StatelessWidget {
  const CreateNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // titile
        TextApp(
          text: 'Notifications',
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.poppinsEnglish,
          ),
        ),
        // bottom sheet
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showModalBottomSheetContainer(
              context: context,
              widget: BlocProvider(
                create: (context) => sl<AddNotificationBloc>(),
                child: const CreateNotificationBottomSheet(),
              ),
            );
          },
          backgroundColor: ColorsDark.blueDark,
          lastRadius: 10,
          threeRadius: 10,
          text: 'Add',
          width: 90.w,
          height: 35.h,
        ),
      ],
    );
  }
}









// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:grocery_store_app/core/common/bottom_shet/custom_bottom_sheet.dart';
// import 'package:grocery_store_app/core/common/widgets/custom_button.dart';
// import 'package:grocery_store_app/core/common/widgets/text_app.dart';
// import 'package:grocery_store_app/core/di/injection_container.dart';
// import 'package:grocery_store_app/core/extensions/context_extension.dart';
// import 'package:grocery_store_app/core/style/colors/colors_dark.dart';
// import 'package:grocery_store_app/core/style/fonts/font_family_helper.dart';
// import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';
// import 'package:grocery_store_app/features/admin/add_notifications/presentation/bloc/add_notification/add_notification_bloc.dart';
// import 'package:grocery_store_app/features/admin/add_notifications/presentation/widgets/create/create_notification_bottom_sheet.dart';
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
