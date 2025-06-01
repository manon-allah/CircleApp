import 'package:circle_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ColorsApp.mainColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
        ),
        onPressed: () {},
        child: Text('دخول', style: TextStyle(fontSize: 14.sp)),
      ),
    );
  }
}
