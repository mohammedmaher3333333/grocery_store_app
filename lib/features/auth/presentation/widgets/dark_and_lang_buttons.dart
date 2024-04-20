import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_store_app/core/common/animations/animate_do.dart';
import 'package:grocery_store_app/core/common/widgets/custom_linear_button.dart';
import 'package:grocery_store_app/core/common/widgets/text_app.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/language/app_localizations.dart';
import 'package:grocery_store_app/core/language/lang_keys.dart';
import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
   // final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button

      CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: (){},//cubit.changeAppThemeMode,
                child: Icon(
                  Icons.light_mode_rounded,
                  color: Colors.white,
                ),
              ),
      ),
        //Language Button
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {
              // if (AppLocalizations.of(context)!.isEnLocale) {
              //   cubit.toArabic();
              // } else {
              //   cubit.toEnglish();
              // }
            },
            height: 44.h,
            width: 100.w,
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
