import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowTimerResend extends StatelessWidget {
  final void Function()? startTimer;
  final int secondsRemaining;
  const CustomRowTimerResend({
    super.key, this.startTimer, required this.secondsRemaining,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: secondsRemaining == 0 ? startTimer : null,
          child: Text(
            "إعادة إرسال الرمز",
            style: TextStyle(
              color: secondsRemaining == 0 ? Colors.red : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          "00:${secondsRemaining.toString().padLeft(2, '0')}",
          style: TextStyle(fontSize: 14.sp),
        ),
      ],
    );
  }
}