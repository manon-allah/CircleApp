import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_body.dart';

class CustomLoginBody extends StatelessWidget {
  const CustomLoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 134.w, height: 120.h),
          ],
        ),
        SizedBox(height: 64.h),
        CustomBody(),
      ],
    );
  }
}