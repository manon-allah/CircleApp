import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/bottom_nav_bar.dart';
import 'custom_otp_body.dart';

class CustomOtpBottomSheet extends StatefulWidget {
  final String phoneNumber;
  const CustomOtpBottomSheet({super.key, required this.phoneNumber});

  @override
  State<CustomOtpBottomSheet> createState() => _CustomOtpState();
}

class _CustomOtpState extends State<CustomOtpBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offsetAnimation;

  late Timer timer;
  int secondsRemaining = 60;
  String otpCode = '';

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..forward();

    offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offsetAnimation,
      child: Container(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 20.h,
          bottom: MediaQuery.of(context).viewInsets.bottom + 20.h,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
        ),
        child: CustomOtpBody(
          phoneNumber: widget.phoneNumber,
          onConfirmPressed: onConfirmPressed,
          secondsRemaining: secondsRemaining,
          startTimer: startTimer,
          onChanged: (value) {
            setState(() {
              otpCode = value;
            });
          },
        ),
        ),
    );
  }

  void startTimer() {
    secondsRemaining = 60;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          secondsRemaining--;
        });
      }
    });
  }

  void goToHome() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const BottomNavBar()),
      (route) => false,
    );
  }

  void onConfirmPressed() {
    if (otpCode.length == 5) {
      goToHome();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("من فضلك أدخل رمز التحقق كاملًا")),
      );
    }
  }

  @override
  void dispose() {
    controller.dispose();
    timer.cancel();
    super.dispose();
  }
}
