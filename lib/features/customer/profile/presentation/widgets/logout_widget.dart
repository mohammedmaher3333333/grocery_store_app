import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/core/common/dialogs/custom_dialogs.dart';
import 'package:grocery_store_app/core/common/widgets/text_app.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/language/lang_keys.dart';
import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';
import 'package:grocery_store_app/core/style/images/app_images.dart';
import 'package:grocery_store_app/core/utils/app_logout.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.logout,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.logOut),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),
        //language button
        InkWell(
          onTap: () {
            //dialog
            CustomDialog.twoButtonDialog(
              context: context,
              textBody: context.translate(LangKeys.logOutFromApp),
              textButton1: context.translate(LangKeys.yes),
              textButton2: context.translate(LangKeys.no),
              isLoading: false,
              onPressed: () async {
                await AppLogout().logout();
              },
            );
          },
          child: Row(
            children: [
              TextApp(
                text: context.translate(LangKeys.logOut).toLowerCase(),
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.regular,
                ),
              ),
              SizedBox(width: 5.w),
              Icon(
                Icons.arrow_forward_ios,
                color: context.color.textColor,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
