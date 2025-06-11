import 'package:circle_app/features/auth/login/widgets/login/custom_login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/Framestack.png',
              width: 124.w,
            ),
          ),
          CustomLoginBody(),
        ],
      ),
    );
  }
}
