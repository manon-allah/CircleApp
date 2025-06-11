import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_confirm_to_home.dart';
import 'custom_otp_text_field.dart';
import 'custom_row_timer_resend.dart';

class CustomOtpBody extends StatefulWidget {
  final void Function()? onConfirmPressed;
  final void Function()? startTimer;
  final Function(String)? onChanged;
  final int secondsRemaining;
  final String phoneNumber;
  const CustomOtpBody({
    super.key,
    required this.phoneNumber,
    this.onConfirmPressed,
    required this.secondsRemaining,
    this.startTimer,
    this.onChanged,
  });

  @override
  State<CustomOtpBody> createState() => _CustomOtpBodyState();
}

class _CustomOtpBodyState extends State<CustomOtpBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/otp.png', width: 225.w, height: 150.h),
        SizedBox(height: 16.h),
        Text(
          "من فضلك ادخل رمز التحقق المرسل الى رقم الجوال\n${widget.phoneNumber}",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.sp),
        ),
        SizedBox(height: 13.h),
        CustomOtpTextField(onChanged: widget.onChanged,),
        SizedBox(height: 16.h),
        CustomRowTimerResend(
          secondsRemaining: widget.secondsRemaining,
          startTimer: widget.startTimer,
        ),
        SizedBox(height: 16.h),
        CustomConfirmToHome(onConfirmPressed: widget.onConfirmPressed),
      ],
    );
  }
}