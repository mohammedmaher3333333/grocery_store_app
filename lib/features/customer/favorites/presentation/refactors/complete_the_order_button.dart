import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_store_app/core/common/animations/animate_do.dart';
import 'package:grocery_store_app/core/common/widgets/custom_linear_button.dart';
import 'package:grocery_store_app/core/common/widgets/text_app.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/style/fonts/font_weight_helper.dart';

class CompleteTheOrderButton extends StatelessWidget {
  const CompleteTheOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 500,
      child: Container(
        height: 90.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: context.color.containerShadow1,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomLinearButton(
            onPressed: () {
              print('Complete the order');
            },
            height: 40.h,
            width: 140.w,
            child: TextApp(
              text: 'Complete the order',
              theme: context.textStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
