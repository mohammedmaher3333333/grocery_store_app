import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_store_app/core/common/animations/animate_do.dart';
import 'package:grocery_store_app/core/common/widgets/custom_linear_button.dart';
import 'package:grocery_store_app/core/common/widgets/text_app.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';

class SaveFilterButton extends StatelessWidget {
  const SaveFilterButton({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 300,
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: CustomLinearButton(
          onPressed: onTap,
          height: 30.h,
          width: 100.w,
          child: TextApp(
            text: 'Save',
            theme: context.textStyle.copyWith(
              fontSize: 13.sp,
            ),
          ),
        ),
      ),
    );
  }
}
