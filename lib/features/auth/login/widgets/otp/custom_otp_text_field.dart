import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../core/theming/colors.dart';

class CustomOtpTextField extends StatelessWidget {
  final Function(String)? onChanged;
  const CustomOtpTextField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: PinCodeTextField(
          appContext: context,
          length: 5,
          keyboardType: TextInputType.number,
          animationType: AnimationType.fade,
          textStyle: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: ColorsApp.mainColor,
          ),
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.underline,
            fieldWidth: 45.w,
            inactiveColor: ColorsApp.greyLightColor,
            activeColor: ColorsApp.mainColor,
            selectedColor: ColorsApp.mainColor,
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
