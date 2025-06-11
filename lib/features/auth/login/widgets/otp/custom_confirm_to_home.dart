import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class CustomConfirmToHome extends StatelessWidget {
  final void Function()? onConfirmPressed;
  const CustomConfirmToHome({
    super.key, this.onConfirmPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onConfirmPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsApp.mainColor,
          padding: EdgeInsets.symmetric(vertical: 15.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          "تأكيد",
          style: TextStyles.font14Normal.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
